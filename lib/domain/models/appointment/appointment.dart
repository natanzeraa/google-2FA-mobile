import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
abstract class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required String name,
    required String service,
    required String date,
    required String time,
    required String status,
    required String price,
  }) = _Appointment;

  // opcional (se for trabalhar com JSON)
  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}
