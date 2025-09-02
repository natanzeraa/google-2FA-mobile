// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentRequest _$AppointmentRequestFromJson(Map<String, dynamic> json) =>
    _AppointmentRequest(
      clientName: json['clientName'] as String?,
      service: json['service'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AppointmentRequestToJson(_AppointmentRequest instance) =>
    <String, dynamic>{
      'clientName': instance.clientName,
      'service': instance.service,
      'date': instance.date,
      'status': instance.status,
      'price': instance.price,
    };
