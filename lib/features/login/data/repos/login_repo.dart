import 'package:mkanak/core/networks/api_error_handler.dart';
import 'package:mkanak/core/networks/api_result.dart';
import 'package:mkanak/features/login/data/apis/login_api_services.dart';
import 'package:mkanak/features/login/data/models/login_request_body_model.dart';
import 'package:mkanak/features/login/data/models/login_response_body_model.dart';

class LoginRepo {
  LoginRepo(this._apiServices);
  final LoginApiServices _apiServices;
  Future<ApiResult<LoginResponseBody>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.loginUser(
          'AIzaSyBWt8frWhA3QEbzbJivGMth1hcX7NxKm30', loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}
