// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Appointment _$AppointmentFromJson(Map<String, dynamic> json) => _Appointment(
  id: json['id'] as String,
  name: json['name'] as String,
  service: json['service'] as String,
  date: json['date'] as String,
  time: json['time'] as String,
  status: json['status'] as String,
  price: json['price'] as String,
);

Map<String, dynamic> _$AppointmentToJson(_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service': instance.service,
      'date': instance.date,
      'time': instance.time,
      'status': instance.status,
      'price': instance.price,
    };
