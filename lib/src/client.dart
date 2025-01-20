import 'dart:convert';
import 'package:check_mk_api/src/consts.dart';
import 'package:flutter/foundation.dart' show kIsWeb, kDebugMode;
import 'dart:io' if (kIsWeb) 'dart:html';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import './client_settings.dart';
import './error/check_mk_base_error.dart';
import './models/models.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) {
        return true;
      });
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

    if (!settings.validateSsl && !kIsWeb) {
      HttpOverrides.global = MyHttpOverrides();
    }
  }

  Future<void> testConnection() async {
    await requestLql('ping');
  }

  Future<BuiltList<LqlTableLogDto>> lqlGetTableLogs(
      {List<String>? columns, List<String>? filter, num? limit}) async {
    var response = await requestLqlTable('log',
        columns: columns, filter: filter, limit: limit);

    List<LqlTableLogDto> result = [];
    response.data.forEach((item) {
      result.add(serializers.deserializeWith(LqlTableLogDto.serializer, item)!);
    });
    return BuiltList(result);
  }

  Future<Response> requestLqlTable(String table,
      {List<String>? columns, List<String>? filter, num? limit}) async {
    Map<String, dynamic /*String|Iterable<String>*/ > queryParams = {};

    if (columns != null) {
      queryParams["column"] = columns;
    }
    if (filter != null) {
      queryParams["filter"] = filter;
    }
    if (limit != null) {
      queryParams["limit"] = limit;
    }

    if (queryParams.isNotEmpty) {
      return await requestLql('table/$table', queryParams: queryParams);
    }

    return await requestLql('table/$table');
  }

  Future<Response> requestLql(String url,
      {String method = 'GET',
      Map<String, dynamic /*String|Iterable<String>*/ >? queryParams,
      dynamic data}) async {
    Uri uri;
    uri = Uri(
        path: "/${settings.site}/lql-api/v1/$url",
        queryParameters: queryParams);

    var auth =
        'Basic ${base64Encode(utf8.encode('${settings.username}:${settings.secret}'))}';

    try {
      if (kDebugMode) {
        // print("Auth: ${auth}");
        print("$method ${dio.options.baseUrl}${uri.toString()}");
      }
      return await dio.request(uri.toString(),
          data: data,
          options: Options(
              method: method,
              headers: <String, String>{'authorization': auth}));
    } on DioException catch (e) {
      if (kDebugMode) {
        // The request was made and the server responded with a status code
        // that falls out of the range of 2xx and is also not 304.
        if (e.response != null) {
          print(e.response!.data);
          print(e.response!.headers);
        } else {
          // Something happened in setting up or sending the request that triggered an Error
          print(e.message);
        }
      }
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      throw CheckMkBaseError.of<DioException>(e);
    }
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
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
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
    columns ??= columns = [
      'id',
      'author',
      'comment',
      'description',
      'entry_time',
      'entry_type',
    ];

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

  @override
  String toString() {
    return 'cmk_api.Client: ${settings.baseUrl}';
  }
}
