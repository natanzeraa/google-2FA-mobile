import 'package:mobile_app/data/services/api/appointments_service.dart';
import 'package:mobile_app/domain/models/appointment/appointment.dart';
import 'package:mobile_app/utils/result.dart';

class AppointmentsRepository {
   final AppointmentsService _service;

  AppointmentsRepository({required AppointmentsService service})
      : _service = service;

  Future<Result<List<Appointment>>> getAppointments() async {
    try {
      final appointments = await _service.getAppointments();
      return Result.ok(appointments);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
