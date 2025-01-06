
import 'package:json_annotation/json_annotation.dart';
part 'login_response_body_model.g.dart';

@JsonSerializable()
class LoginResponseBody {
  LoginResponseBody({
    this.idToken,
    this.email,
    this.refreshToken,
  });
  String? idToken;
  String? email;
  String? refreshToken;

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}
