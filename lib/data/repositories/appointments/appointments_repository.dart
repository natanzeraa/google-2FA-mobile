import 'package:mobile_app/data/repositories/appointments/appointments_repository.dart';
import 'package:mobile_app/data/services/local/local_service.dart';
import 'package:mobile_app/domain/models/appointment/appointment.dart';
import 'package:mobile_app/utils/result.dart';

class AppointmentsRepository extends AppointmentsRepository {
  AppointmentsRepository({required AppointmentsService service})
    : _service = service;

  final service _service;

  Future<Result<List<Appointment>>> getAppointments() async {
    try {
      final appointments = await _service.getAppointments();
      return Result.ok(appointments);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
