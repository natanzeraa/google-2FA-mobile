import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/domain/models/appointment/appointment.dart';

import 'appointment.dart';

part 'appointment_response.freezed.dart';
part 'appointment_response.g.dart';

/// Represents the response from the API when fetching appointments.
///
/// The response contains the success status, HTTP status code, and a list of [Appointment] objects.
///
/// Example JSON:
/// ```json
/// {
///   "success": true,
///   "status": 200,
///   "data": [
///     {
///       "id": "1",
///       "client_name": "Ana Silva",
///       "service": "Esmaltação simples",
///       "date": "2025-09-01",
///       "time": "09:00",
///       "status": "confirmed",
///       "price": 50
///     }
///   ]
/// }
/// ```
@freezed
class AppointmentResponse with _$AppointmentResponse {
  /// Creates a new [AppointmentResponse] instance.
  const factory AppointmentResponse({
    /// Indicates if the API call was successful.
    required bool success,

    /// HTTP status code.
    required int status,

    /// List of appointments returned by the API.
    required List<Appointment> data,
  }) = _AppointmentResponse;

  /// Creates an [AppointmentResponse] from a JSON map.
  factory AppointmentResponse.fromJson(Map<String, Object?> json) =>
      _$AppointmentResponseFromJson(json);
}
