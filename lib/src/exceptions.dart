import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;

class BaseException implements Exception {
  String message = 'Unknown error';

  BaseException({String? message}) {
    if (message != null) {
      this.message = message;
    }
  }

  @override
  String toString() {
    return message;
  }
}

class NotConnectedException extends BaseException {
  NotConnectedException() : super(message: 'Not connected to the Checkmk server');
}

class NetworkException extends BaseException {
  NetworkException({
    required super.message,
  });

  static NetworkException of<T extends Exception>(T e) {
    if (e is DioException) {
      if (kDebugMode) {
        // The request was made and the server responded with a status code
        // that falls out of the range of 2xx and is also not 304.
        if (e.response != null) {
          print(e.requestOptions.uri);
          print(e.response!.data);
          print(e.response!.headers);
          print(e.response!.statusCode);
        } else {
          // Something happened in setting up or sending the request that triggered an Error
          print(e.requestOptions.uri);
          print(e.message);
        }
      }
    }
    return NetworkException(message: e.toString());
  }

  @override
  String toString() {
    return 'NetworkException: $message';
  }
}
