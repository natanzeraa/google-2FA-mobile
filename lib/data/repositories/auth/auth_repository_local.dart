import '../../../utils/result.dart';
import 'auth_repository.dart';

class AuthRepositoryLocal extends AuthRepository {
  @override
  Future<bool> get isAuthenticated => Future.value(true);

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> logout() async {
    return const Result.ok(null);
  }
}
