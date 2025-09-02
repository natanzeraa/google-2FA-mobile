class AuthValidator {
  String? validateName(String name) {
    if (name.isEmpty) return "Nome é obrigatório";
    if (name.length < 3) return "Nome precisa ter ao menos 3 caracteres";
    return null;
  }

  String? validateEmail(String email) {
    if (email.isEmpty) return "Email é obrigatório";
    if (!email.contains('@')) return "Email inválido";
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) return "Senha é obrigatória";
    if (password.length < 6) return "Senha muito curta";
    return null;
  }

  String? validatePasswordConfirmation(String password, String confirmation) {
    if (confirmation.isEmpty) return "Confirme sua senha";
    if (confirmation != password) return "As senhas não coincidem";
    return null;
  }
}