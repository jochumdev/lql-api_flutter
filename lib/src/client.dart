import 'dart:convert';
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

  Future<BuiltList<LqlTableHostsDto>> lqlGetTableHosts(
      {List<String>? columns, List<String>? filter, num? limit}) async {
    var response = await requestLqlTable('hosts',
        columns: columns, filter: filter, limit: limit);

    List<LqlTableHostsDto> result = [];
    response.data.forEach((item) {
      result
          .add(serializers.deserializeWith(LqlTableHostsDto.serializer, item)!);
    });
    return BuiltList(result);
  }

  Future<BuiltList<LqlTableCommentsDto>> lqlGetTableComments(
      {List<String>? columns, List<String>? filter, num? limit}) async {
    var response = await requestLqlTable('comments',
        columns: columns, filter: filter, limit: limit);

    List<LqlTableCommentsDto> result = [];
    response.data.forEach((item) {
      result.add(
          serializers.deserializeWith(LqlTableCommentsDto.serializer, item)!);
    });
    return BuiltList(result);
  }

  Future<BuiltList<LqlTableServicesDto>> lqlGetTableServices(
      {List<String>? columns, List<String>? filter, num? limit}) async {
    var response = await requestLqlTable('services',
        columns: columns, filter: filter, limit: limit);

    List<LqlTableServicesDto> result = [];
    response.data.forEach((item) {
      result.add(
          serializers.deserializeWith(LqlTableServicesDto.serializer, item)!);
    });
    return BuiltList(result);
  }

  Future<LqlStatsTacticalOverviewDto> lqlGetStatsTacticalOverview() async {
    var response = await requestLql('stats/tactical_overview');
    return serializers.deserializeWith(
        LqlStatsTacticalOverviewDto.serializer, response.data)!;
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
        print("$method ${uri.toString()}");
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

  Future<Response> requestWebApi(String action,
      {String method = 'GET', dynamic data}) async {
    Map<String, String> query = {
      "action": action,
      "_username": settings.username,
      "_secret": settings.secret,
      "output_format": "json",
    };
    Uri uri = Uri(
        path: "/${settings.site}/check_mk/webapi.py", queryParameters: query);

    Map<String, dynamic> requestData = {};
    if (data != null) {
      requestData["request"] = data;
    }

    try {
      return await dio.request(uri.toString(),
          options: Options(method: method), data: data);
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      throw CheckMkBaseError.of<DioException>(e);
    }
  }

  @override
  String toString() {
    return 'cmk_api.Client: ${settings.baseUrl}';
  }
}
