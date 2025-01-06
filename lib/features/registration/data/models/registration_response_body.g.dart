// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationResponseBody _$RegistrationResponseBodyFromJson(
        Map<String, dynamic> json) =>
    RegistrationResponseBody(
      idToken: json['idToken'] as String?,
      email: json['email'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$RegistrationResponseBodyToJson(
        RegistrationResponseBody instance) =>
    <String, dynamic>{
      'idToken': instance.idToken,
      'email': instance.email,
      'refreshToken': instance.refreshToken,
    };
