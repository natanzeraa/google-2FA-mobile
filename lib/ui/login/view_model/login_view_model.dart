import 'package:flutter/material.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository.dart';
import 'package:mobile_app/data/services/models/auth_response/auth_response.dart';
import 'package:mobile_app/utils/result.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthRepository repository;
  LoginViewModel({required this.repository});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  bool success = false;
  String? successMsg;
  String? errorMsg;

  Future<void> login() async {
    isLoading = true;
    success = false;
    successMsg = null;
    errorMsg = null;
    notifyListeners();

    final result = await repository.login(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

    if (result is Ok<AuthResponse>) {
      success = true;
      successMsg = result.value.message;
    } else if (result is Error<AuthResponse>) {
      success = false;
      errorMsg = result.error.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}
