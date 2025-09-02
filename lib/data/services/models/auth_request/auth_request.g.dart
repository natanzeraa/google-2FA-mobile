// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) => _AuthRequest(
  name: json['name'] as String?,
  email: json['email'] as String,
  password: json['password'] as String,
  token: json['token'] as String?,
);

Map<String, dynamic> _$AuthRequestToJson(_AuthRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
    };
