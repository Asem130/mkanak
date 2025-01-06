import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Connection to server faild');
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Requiest to the server was cancelled');
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection timeout with the server');
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message: 'Connection to server faild due to internet connection');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: 'Recieve timeout in connection with the server');
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message: 'Send timeout in connection with the server');
        default:
          return ApiErrorModel(message: 'Somethig went wrong');
      }
    } else {
      // default error
      return ApiErrorModel(message: 'Unknown error occurred');
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    error: Error(data['code'], data['message'] ?? 'Unknown error occurred',),
  );
}
