// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestBody _$LoginRequestBodyFromJson(Map<String, dynamic> json) =>
    LoginRequestBody(
      password: json['password'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$LoginRequestBodyToJson(LoginRequestBody instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
    };
