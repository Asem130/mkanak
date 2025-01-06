// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationRequestBody _$RegistrationRequestBodyFromJson(
        Map<String, dynamic> json) =>
    RegistrationRequestBody(
      password: json['password'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$RegistrationRequestBodyToJson(
        RegistrationRequestBody instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
    };
