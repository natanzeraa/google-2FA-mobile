import 'package:mobile_app/data/repositories/customers/customers_repository.dart';
import 'package:mobile_app/data/services/local/local_service.dart';
import 'package:mobile_app/domain/models/customer.dart';
import 'package:mobile_app/utils/result.dart';

class CustomersRepositoryLocal extends CustomersRepository {
  CustomersRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  Future<Result<List<Customer>>> getByName(String name) async {
    try {
      final customers = await _localDataService.getCustomers().toList();
      return Result.ok(customers);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
