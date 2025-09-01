// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      success: json['success'] as bool,
      status: (json['status'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'user': instance.user,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'message': instance.message,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  mongoId: json['_id'] as String,
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  twoFaEnabled: json['twoFaEnabled'] as bool,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  '_id': instance.mongoId,
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'twoFaEnabled': instance.twoFaEnabled,
};
