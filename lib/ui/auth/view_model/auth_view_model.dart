class AuthViewModel extends ChangeNotifier {
  final AuthRepository repository;
  AuthViewModel({required this.repository});

  bool isLoggedIn = false;
  bool isLoading = false;
  bool success = false;
  String? successMsg;
  String? errorMsg;

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    final result = await repository.login(
      email: email.trim(),
      password: password.trim(),
    );

    result.when(
      ok: (value) {
        success = true;
        successMsg = value.message;
        isLoggedIn = true;
      },
      error: (err) {
        success = false;
        errorMsg = err.toString();
        isLoggedIn = false;
      },
    );

    isLoading = false;
    notifyListeners();
  }

  Future<void> signup(String name, String email, String password) async {
    isLoading = true;
    notifyListeners();

    final result = await repository.signup(
      name: name.trim(),
      email: email.trim(),
      password: password.trim(),
    );

    result.when(
      ok: (value) {
        success = true;
        successMsg = value.message;
        isLoggedIn = true;
      },
      error: (err) {
        success = false;
        errorMsg = err.toString();
        isLoggedIn = false;
      },
    );

    isLoading = false;
    notifyListeners();
  }

  Future<void> logout() async {
    final result = await repository.logout();

    result.when(
      ok: (_) {
        isLoggedIn = false;
      },
      error: (err) {
        errorMsg = err.toString();
      },
    );

    notifyListeners();
  }
}
