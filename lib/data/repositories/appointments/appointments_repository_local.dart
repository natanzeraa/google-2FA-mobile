import 'package:mobile_app/data/repositories/appointments/appointments_repository.dart';
import 'package:mobile_app/data/services/local/local_service.dart';
import 'package:mobile_app/domain/models/appointment/appointment.dart';
import 'package:mobile_app/utils/result.dart';

class CustomersRepositoryLocal extends CustomersRepository {
  CustomersRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  Future<Result<List<Appointment>>> getByName(String name) async {
    try {
      final appointments = await _localDataService.getAppointments();
      return Result.ok(appointments);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
