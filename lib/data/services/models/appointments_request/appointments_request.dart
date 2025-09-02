import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointments_request.freezed.dart';
part 'appointments_request.g.dart';

/// Represents the request to fetch appointments from the API.
///
/// This request is used for filtering appointments based on different attributes.
/// Only the headers (like Authorization) are required, the body is optional.
///
/// Example JSON request body:
/// ```json
/// {
///   "client_name": "Ana Silva",
///   "service": "Esmaltação simples",
///   "date": "2025-09-01",
///   "status": "confirmed"
/// }
/// ```
@freezed
abstract class AppointmentRequest with _$AppointmentRequest {
  /// Creates a new [AppointmentRequest] instance.
  const factory AppointmentRequest({
    /// Filter by client name.
    String? clientName,

    /// Filter by service type.
    String? service,

    /// Filter by appointment date (YYYY-MM-DD).
    String? date,

    /// Filter by appointment status: "confirmed", "pending", "cancelled".
    String? status,

    /// Filter by price (exact match).
    double? price,
  }) = _AppointmentRequest;

  /// Creates an [AppointmentRequest] from a JSON map.
  factory AppointmentRequest.fromJson(Map<String, Object?> json) =>
      _$AppointmentRequestFromJson(json);
}
