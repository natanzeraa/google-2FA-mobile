import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/ui/auth/validators/auth_validator.dart';
import 'package:mobile_app/ui/auth/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();
    final _theme = Theme.of(context);
    final _formKey = GlobalKey<FormState>();
    final _validator = AuthValidator();
        
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _passwordConfirmationController = TextEditingController();

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
                  child: Text(
                    "Registre-se",
                    style: _theme.textTheme.headlineLarge,
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),

                TextFormField(
                  controller: _nameController,
                  validator: (value) => _validator.validateName(value ?? ""),
                  decoration: InputDecoration(labelText: "Nome completo"),
                  style: _theme.textTheme.bodySmall,
                ),

                Padding(padding: EdgeInsets.all(10)),

                TextFormField(
                  controller: _emailController,
                  validator: (value) => _validator.validateEmail(value ?? ""),
                  decoration: InputDecoration(labelText: "Email"),
                  style: _theme.textTheme.bodySmall,
                ),

                Padding(padding: EdgeInsets.all(10)),

                TextFormField(
                  controller: _passwordController,
                  validator: (value) => _validator.validatePassword(value ?? ""),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    disabledBorder: InputBorder.none,
                    focusColor: Colors.orange,
                  ),
                  style: _theme.textTheme.bodySmall,
                ),

                Padding(padding: EdgeInsets.all(10)),

                TextFormField(
                  controller: _passwordConfirmationController,
                  validator: (value) => _validator.validatePasswordConfirmation(value, _passwordController.text),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirmação de senha",
                    disabledBorder: InputBorder.none,
                    focusColor: Colors.orange,
                  ),
                  style: _theme.textTheme.bodySmall,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: CheckboxListTile(
                    value: vm.acceptedTerms,
                    onChanged:  (value) => vm.acceptedTerms = value ?? false,
                    title: Text(
                      "Aceita os termos e condições?",
                      style: _theme.textTheme.bodySmall,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: vm.isLoading
                      ? null
                      : () => vm.signup(_nameController.text.trim(), _passwordController.text.trim(), _passwordConfirmationController.text.trim()) ,
                    child: vm.isLoading
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text( 
                            "Criar conta",  
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),

                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Ou registre-se com",
                        style: _theme.textTheme.bodySmall,
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  ],
                ),

                Padding(padding: EdgeInsets.all(15)),

                OutlinedButton.icon(
                  onPressed: () => print("Registrar com Google"),
                  icon: Image.asset(
                    "assets/google_logo.png",
                    height: 24,
                    width: 24,
                  ),
                  label: Text(
                    "Registrar com Google",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),

                RichText(
                  text: TextSpan(
                    style: _theme.textTheme.bodySmall,
                    children: [
                      TextSpan(text: "Já possui uma conta? "),
                      TextSpan(
                        text: "Acesse aqui",
                        style: _theme.textTheme.bodySmall?.copyWith(
                          color: _theme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go('/login');
                          },
                      ),
                    ],
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
