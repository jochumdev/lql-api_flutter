import 'package:dio/dio.dart';

class CheckMkBaseError implements Exception {
  CheckMkBaseError({
    this.request,
    this.response,
    this.type = DioErrorType.DEFAULT,
    this.error,
  });

  static CheckMkBaseError of<T>(T error) {
    if (error is DioError) {
      return new CheckMkBaseError(
        request: error.request,
        response: error.response,
        type: error.type,
        error: error.error,
      );
    }
  }

  /// Request info.
  RequestOptions request;

  /// Response info, it may be `null` if the request can't reach to
  /// the http server, for example, occurring a dns error, network is not available.
  Response response;

  DioErrorType type;

  /// The original error/exception object; It's usually not null when `type`
  /// is DioErrorType.DEFAULT
  dynamic error;

  String get message => (error?.toString() ?? '');

  @override
  String toString() {
    var msg = 'DioError [$type]: $message';
    if (error is Error) {
      msg += '\n${error.stackTrace}';
    }
    return msg;
  }
}
