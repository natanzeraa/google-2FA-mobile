import 'package:flutter/material.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository.dart';

class AuthRepositoryRemote extends ChangeNotifier {
  AuthRepositoryRemote({required AuthRepository authRepository});

  /**
        API ESPERA A SEGUINTE ESTRUTURA DE DADOS COMO ENTRADA

        {
          "name": "João Gomes",
          "email": "joaogomes@cantor.com.br",
          "password": "JoaoGomes*2025",
          "twoFaEnabled": false
        }

        CAMPOS NECESSÁRIOS: 
          - name, email, password, twoFaEnabled
   */
}
