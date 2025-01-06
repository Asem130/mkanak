import 'package:dio/dio.dart';
import 'package:mkanak/features/login/data/models/login_request_body_model.dart';
import 'package:mkanak/features/login/data/models/login_response_body_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api_services.g.dart';

@RestApi(baseUrl: "https://identitytoolkit.googleapis.com/v1/")
abstract class LoginApiServices {
  factory LoginApiServices(Dio dio, {String baseUrl}) = _LoginApiServices;

  @POST("accounts:signInWithPassword")
  Future<LoginResponseBody> loginUser(
    @Query("key") String apiKey,
    @Body() LoginRequestBody body,
  );
}
