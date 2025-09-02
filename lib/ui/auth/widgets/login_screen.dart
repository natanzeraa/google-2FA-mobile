import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/ui/auth/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';
import 'package: mobile_app/ui/auth/validators/auth_validator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();
    final _theme = Theme.of(context);
    final _formKey = GlobalFormKey<FormState>();
    final _validator = AuthValidator();

    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
 
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text("Login", style: _theme.textTheme.headlineLarge),
                ),

                const SizedBox(height: 20),

                TextFormField(
                  controller: _emailController,
                  validator: _validator.validateEmail,
                  decoration: InputDecoration(labelText: "Email"),
                  style: _theme.textTheme.bodySmall,
                ),

                const SizedBox(height: 10),

                TextFormField(
                  controller: _passwordController,
                  validator: _validator.validatePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    disabledBorder: InputBorder.none,
                    focusColor: Colors.orange,
                  ),
                  style: _theme.textTheme.bodySmall,
                ),

                const SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Esqueceu sua senha?",
                    style: _theme.textTheme.bodySmall,
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: vm.isLoading ? null : () => vm.login(),
                    child: vm.isLoading
                        ? CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            'Entrar',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                  ),
                ),

                const SizedBox(height: 12),
                if (vm.successMsg != null)
                  Text(
                    vm.successMsg!,
                    style: const TextStyle(color: Colors.green),
                  ),
                if (vm.errorMsg != null)
                  Text(vm.errorMsg!, style: const TextStyle(color: Colors.red)),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Ou entre com",
                        style: _theme.textTheme.bodySmall,
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  ],
                ),

                const SizedBox(height: 15),

                OutlinedButton.icon(
                  onPressed: () => print("Login com Google"),
                  icon: Image.asset(
                    "assets/google_logo.png",
                    height: 24,
                    width: 24,
                  ),
                  label: const Text(
                    "Entrar com Google",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  "Ainda não possui uma conta?",
                  style: _theme.textTheme.bodySmall,
                ),

                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => context.go("/signup"),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    child: Text(
                      "Criar uma nova conta",
                      style: _theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
