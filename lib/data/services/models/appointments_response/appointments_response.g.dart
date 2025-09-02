// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentResponse _$AppointmentResponseFromJson(Map<String, dynamic> json) =>
    _AppointmentResponse(
      success: json['success'] as bool,
      status: (json['status'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppointmentResponseToJson(
  _AppointmentResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'status': instance.status,
  'data': instance.data,
};
