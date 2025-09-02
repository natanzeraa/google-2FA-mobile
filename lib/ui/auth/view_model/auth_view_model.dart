import 'package:flutter/foundation.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository.dart';
import 'package:mobile_app/utils/result.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository repository;
  AuthViewModel({required this.repository});

  bool isLoggedIn = false;
  bool isLoading = false;
  bool acceptedTerms = false;
  bool success = false;
  String? successMsg;
  String? errorMsg;

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    final Result result = await repository.login(
      email: email.trim(),
      password: password.trim(),
    );

    if (result is Ok) {
      success = true;
      successMsg = result.value.message;
      isLoggedIn = true;
    } else if (result is Error) {
      success = false;
      errorMsg = result.error.toString();
      isLoggedIn = false;
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> signup(String name, String email, String password) async {
    isLoading = true;
    notifyListeners();

    final Result result = await repository.signup(
      name: name.trim(),
      email: email.trim(),
      password: password.trim(),
    );

    if (result is Ok) {
      success = true;
      successMsg = result.value.message;
      isLoggedIn = true;
    } else if (result is Error) {
      success = false;
      errorMsg = result.error.toString();
      isLoggedIn = false;
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> logout() async {
    final Result result = await repository.logout();

    if (result is Ok) {
      isLoggedIn = false;
      success = true;
      successMsg = "Logout efetuado";
    } else if (result is Error) {
      success = false;
      errorMsg = result.error.toString();
    }

    notifyListeners();
  }
}
