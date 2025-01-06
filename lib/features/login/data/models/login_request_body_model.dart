import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_body_model.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String? password;
  final String? email;

  LoginRequestBody({
    this.password,
    this.email,
  });
  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
