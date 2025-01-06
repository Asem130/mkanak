// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseBody _$LoginResponseBodyFromJson(Map<String, dynamic> json) =>
    LoginResponseBody(
      idToken: json['idToken'] as String?,
      email: json['email'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$LoginResponseBodyToJson(LoginResponseBody instance) =>
    <String, dynamic>{
      'idToken': instance.idToken,
      'email': instance.email,
      'refreshToken': instance.refreshToken,
    };
