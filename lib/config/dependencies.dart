import 'package:mobile_app/data/repositories/appointments/appointments_repository.dart';
import 'package:mobile_app/data/repositories/appointments/appointments_repository_local.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository_local.dart';
import 'package:mobile_app/data/services/local/local_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providersLocal {
  return [
    ChangeNotifierProvider.value(
      value: AuthRepositoryLocal() as AuthRepository,
    ),
    Provider.value(value: LocalDataService()),
    Provider(
      create: (context) =>
          CustomersRepositoryLocal(localDataService: context.read())
              as CustomersRepository,
    ),
  ];
}
