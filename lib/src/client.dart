import 'package:check_mk_api/src/consts.dart';
import 'package:flutter/foundation.dart' show kIsWeb, kDebugMode;
import 'dart:io' if (kIsWeb) 'dart:html';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import './client_settings.dart';
import './error/check_mk_base_error.dart';
import './models/models.dart';

class NoCertHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..connectionTimeout = const Duration(seconds: 60)
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) {
        return true;
      });
  }
}

class TimeoutHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..connectionTimeout = const Duration(seconds: 60);
  }
}

class Client {
  final ClientSettings settings;
  final bool debug;

  Dio dio = Dio();

  Client(this.settings, {this.debug = false}) {
    dio.options.baseUrl = settings.baseUrl;
    dio.options.contentType = Headers.formUrlEncodedContentType;

    if (debug && kDebugMode) {
      dio.interceptors.add(LogInterceptor());
    }
    if (!kIsWeb) {
      if (!settings.validateSsl) {
        HttpOverrides.global = NoCertHttpOverrides();
      } else {
        HttpOverrides.global = TimeoutHttpOverrides();
      }
    }
  }

  Future<void> testConnection() async {
    await getViewEvents(fromSecs: 1);
  }

  Future<Response> requestApi(
      {String method = 'GET',
      String url = '',
      Map<String, dynamic> query = const {},
      dynamic data}) async {
    Uri uri = Uri(
        path: "/${settings.site}/check_mk/api/1.0/$url",
        queryParameters: query);

    var auth = 'Bearer ${settings.username} ${settings.secret}';

    Map<String, dynamic> requestData = {};
    if (data != null) {
      requestData["request"] = data;
    }

    try {
      return await dio.request(uri.toString(),
          options: Options(
            method: method,
            headers: <String, String>{
              'authorization': auth,
              'content-type': 'application/json',
              'accept': 'application/json',
            },
          ),
          data: data);
    } on DioException catch (e) {
      if (kDebugMode) {
        // The request was made and the server responded with a status code
        // that falls out of the range of 2xx and is also not 304.
        if (e.response != null) {
          print(e.requestOptions.uri);
          print(e.response!.data);
          print(e.response!.headers);
        } else {
          // Something happened in setting up or sending the request that triggered an Error
          print(e.requestOptions.uri);
          print(e.message);
        }
      }
      throw CheckMkBaseError.of<DioException>(e);
    }
  }

  Future<Response> requestApiTable(String table,
      {List<String>? columns, List<String>? filter}) async {
    Map<String, dynamic> query = {};

    if (columns != null) {
      query["columns"] = columns;
    }
    if (filter != null) {
      query["query"] = filter;
    }
    if (query.isNotEmpty) {
      return await requestApi(
          method: 'GET',
          url: '/domain-types/$table/collections/all',
          query: query);
    }

    return await requestApi(
        method: 'GET', url: '/domain-types/$table/collections/all');
  }

  Future<BuiltList<TableHostsDto>> getApiTableHost(
      {List<String>? columns, List<String>? filter}) async {
    columns ??= columns = [
      'state',
      'acknowledged',
      'name',
      'alias',
      'address',
      'display_name',
      'groups',
      'labels',
      'parents',
      'tags',
      'latency',
    ];

    var response =
        await requestApiTable('host', columns: columns, filter: filter);

    List<TableHostsDto> result = [];
    response.data["value"].forEach((item) {
      result.add(serializers.deserializeWith(
          TableHostsDto.serializer, item['extensions'])!);
    });
    return BuiltList(result);
  }

  Future<BuiltList<TableServicesDto>> getApiTableService(
      {List<String>? columns, List<String>? filter}) async {
    columns ??= columns = [
      'state',
      'acknowledged',
      'host_name',
      'display_name',
      'description',
      'plugin_output',
      'comments',
      'last_state_change',
    ];

    var response =
        await requestApiTable('service', columns: columns, filter: filter);

    List<TableServicesDto> result = [];
    response.data["value"].forEach((item) {
      result.add(serializers.deserializeWith(
          TableServicesDto.serializer, item['extensions'])!);
    });
    return BuiltList(result);
  }

  Future<BuiltList<TableCommentsDto>> getApiTableComment(
      {List<String>? columns, List<String>? filter}) async {
    var response =
        await requestApiTable('comment', columns: columns, filter: filter);

    List<TableCommentsDto> result = [];
    response.data["value"].forEach((item) {
      result.add(serializers.deserializeWith(
          TableCommentsDto.serializer, item['extensions'])!);
    });
    return BuiltList(result);
  }

  Future<StatsTacticalOverviewDto> getApiStatsTacticalOverview() async {
    final hosts = await getApiTableHost(columns: ['state']);
    int hAll = 0, hDown = 0, hUnreachable = 0;
    for (var h in hosts) {
      hAll += 1;
      switch (h.state) {
        case hostStateDown:
          hDown += 1;
          break;
        case hostStateUnreachable:
          hUnreachable += 1;
          break;
      }
    }

    final services = await getApiTableService(columns: ['state']);
    int sAll = 0, sWarn = 0, sCrit = 0, sUnkn = 0;

    for (var s in services) {
      sAll += 1;
      switch (s.state) {
        case svcStateWarn:
          sWarn += 1;
          break;
        case svcStateCritical:
          sCrit += 1;
          break;
        case svcStateUnknown:
          sUnkn += 1;
          break;
      }
    }

    return StatsTacticalOverviewDto((b) {
      b.hosts.all = hAll;
      b.hosts.warn = hDown;
      b.hosts.crit = hUnreachable;
      b.hosts.unkn = 0;

      b.services.all = sAll;
      b.services.warn = sWarn;
      b.services.crit = sCrit;
      b.services.unkn = sUnkn;
    });
  }

  Future<Response> requestView(String view,
      {Map<String, dynamic> query = const {}}) async {
    query['view_name'] = view;
    query['output_format'] = 'json';

    Uri uri =
        Uri(path: "/${settings.site}/check_mk/view.py", queryParameters: query);

    try {
      return await dio.request(
        uri.toString(),
        options: Options(
          method: 'GET',
          headers: <String, String>{
            'authorization': 'Bearer ${settings.username} ${settings.secret}',
            'content-type': 'application/json',
            'accept': 'application/json',
          },
        ),
      );
    } on DioException catch (e) {
      if (kDebugMode) {
        // The request was made and the server responded with a status code
        // that falls out of the range of 2xx and is also not 304.
        if (e.response != null) {
          print(e.requestOptions.uri);
          print(e.response!.data);
          print(e.response!.headers);
        } else {
          // Something happened in setting up or sending the request that triggered an Error
          print(e.requestOptions.uri);
          print(e.message);
        }
      }
      throw CheckMkBaseError.of<DioException>(e);
    }
  }

  Future<BuiltList<TableLogDto>> getViewEvents({int fromSecs = 60}) async {
    final query = <String, dynamic>{
      'logtime_from': fromSecs.toString(),
      'logtime_from_range': '1',
      'logst_h1': 'on',
      'logst_h2': 'on',
      'logst_s1': 'on',
      'logst_s2': 'on',
      'logst_s3': 'on',
    };

    var response = await requestView('events', query: query);

    if (response.data.length < 2) {
      return BuiltList<TableLogDto>();
    }

    var result = <TableLogDto>[];
    final headers = response.data[0];
    for (var ir = 1; ir < response.data.length; ir++) {
      var row = response.data[ir];
      var rr = TableLogDtoBuilder();
      for (var ih = 0; ih < headers.length; ih++) {
        switch (headers[ih]) {
          case 'log_icon':
            if (row[ih] != 'Service alert' && row[ih] != 'Host alert') {
              break;
            }
            break;
          case 'log_time':
            final now = DateTime.now();
            final s = row[ih].toString();
            if (s.endsWith('s')) {
              rr.time = now
                  .subtract(Duration(seconds: int.parse(s.split('.')[0])))
                  .toUtc();
            } else if (s.endsWith('m')) {
              rr.time = now
                  .subtract(Duration(minutes: int.parse(s.split(' ')[0])))
                  .toUtc();
            } else if (s.endsWith('h')) {
              rr.time = now
                  .subtract(Duration(hours: int.parse(s.split(' ')[0])))
                  .toUtc();
            }

            break;
          case 'log_type':
            break;
          case 'host':
            rr.hostName = row[ih].toString();
            break;
          case 'service_description':
            rr.displayName = row[ih].toString();
            break;
          case 'log_state_info':
            final s = row[ih].toString();
            if (s.contains('DOWN')) {
              rr.state = svcStateUnknown;
            } else if (s.contains('CRITICAL')) {
              rr.state = svcStateCritical;
            } else if (s.contains('WARNING')) {
              rr.state = svcStateWarn;
            }
            break;
          case 'log_plugin_output':
            rr.pluginOutput = row[ih].toString();
            break;
          default:
        }
      }

      // Nothing found.
      if (rr.state == null) {
        continue;
      }

      result.add(
        TableLogDto((b) => b
          ..state = rr.state
          ..time = rr.time
          ..hostName = rr.hostName
          ..displayName = rr.displayName
          ..pluginOutput = rr.pluginOutput),
      );
    }

    return BuiltList(result);
  }

  @override
  String toString() {
    return 'cmk_api.Client: ${settings.baseUrl}';
  }
}
