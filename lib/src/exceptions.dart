import 'package:dio/dio.dart';

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
  NotConnectedException() : super(message: 'Not connected to the Checkmk server, not on Wifi?');
}

class NetworkException extends BaseException {
  RequestOptions? request;
  Response? response;
  Exception? error;

  @override
  String get message => (error?.toString() ?? '');

  NetworkException({
    this.request,
    this.response,
    required this.error,
  });

  static NetworkException of<T extends Exception>(T error) {
    if (error is DioException) {
      return NetworkException(
        response: error.response,
        error: error,
      );
    } else {
      return NetworkException(error: error);
    }
  }

  @override
  String toString() {
    return 'NetworkException: $message';
  }
}
