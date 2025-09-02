import 'package:mobile_app/data/services/api/auth_service.dart';
import 'package:mobile_app/data/services/models/auth_request/auth_request.dart';
import 'package:mobile_app/data/services/models/auth_response/auth_response.dart';
import 'package:mobile_app/utils/result.dart';

class AuthRepository {
  final AuthService service;
  AuthRepository(this.service);

  Future<bool> get isAuthenticated => Future.value(false);

  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    try {
      final request = AuthRequest(email: email, password: password);
      final result = await service.login(request);
      return result;
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<AuthResponse>> signup(AuthRequest request) async {
    final result = await service.signup(request);
    return result;
  }

  Future<Result<void>> logout() async {
    return const Result.ok(null);
  }

  String? getTokenSync() {
    return service.getTokenSync();
  }

  Future<void> loadToken() async {
    await service.loadToken();
  }
}
