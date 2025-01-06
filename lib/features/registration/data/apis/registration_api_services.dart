import 'package:dio/dio.dart';
import 'package:mkanak/features/registration/data/models/registration_request_body.dart';
import 'package:mkanak/features/registration/data/models/registration_response_body.dart';
import 'package:retrofit/retrofit.dart';
part 'registration_api_services.g.dart';

@RestApi(baseUrl: "https://identitytoolkit.googleapis.com/v1/")
abstract class RegistrationApiServices {
  factory RegistrationApiServices(Dio dio, {String baseUrl}) =
      _RegistrationApiServices;

  @POST("accounts:signUp")
  Future<RegistrationResponseBody> registerUser(
    @Query("key") String apiKey,
    @Body() RegistrationRequestBody body,
  );
}
