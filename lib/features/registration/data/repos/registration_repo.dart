import 'package:mkanak/core/networks/api_error_handler.dart';
import 'package:mkanak/core/networks/api_result.dart';
import 'package:mkanak/features/registration/data/apis/registration_api_services.dart';
import 'package:mkanak/features/registration/data/models/registration_request_body.dart';
import 'package:mkanak/features/registration/data/models/registration_response_body.dart';

class RegistrationRepo {
  RegistrationRepo(this._apiServices);
  final RegistrationApiServices _apiServices;
  Future<ApiResult<RegistrationResponseBody>> register(
      RegistrationRequestBody registerRequestBody) async {
    try {
      final response = await _apiServices.registerUser(
          'AIzaSyBWt8frWhA3QEbzbJivGMth1hcX7NxKm30', registerRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}
