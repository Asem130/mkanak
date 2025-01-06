import 'package:json_annotation/json_annotation.dart';
part 'registration_response_body.g.dart';

@JsonSerializable()
class RegistrationResponseBody {
  RegistrationResponseBody({
    this.idToken,
    this.email,
    this.refreshToken,
  });
  String? idToken;
  String? email;
  String? refreshToken;

  factory RegistrationResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseBodyFromJson(json);
}
