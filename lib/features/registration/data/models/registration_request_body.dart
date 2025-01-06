import 'package:freezed_annotation/freezed_annotation.dart';
part 'registration_request_body.g.dart';

@JsonSerializable()
class RegistrationRequestBody {
  final String? password;
  final String? email;

  RegistrationRequestBody({
    this.password,
    this.email,
  });
  Map<String, dynamic> toJson() => _$RegistrationRequestBodyToJson(this);
}
