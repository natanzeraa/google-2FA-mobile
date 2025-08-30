import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/ui/signup/view_model/signup_view_model.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key, required this.viewModel});

  final SignupViewModel viewModel;

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
          ),
          child: Form(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Registre-se",
                    style: theme.textTheme.headlineLarge,
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),

                TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  style: theme.textTheme.bodySmall,
                ),

                Padding(padding: EdgeInsets.all(10)),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    disabledBorder: InputBorder.none,
                    focusColor: Colors.orange,
                  ),
                  style: theme.textTheme.bodySmall,
                ),

                Padding(padding: EdgeInsets.all(10)),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirmação de senha",
                    disabledBorder: InputBorder.none,
                    focusColor: Colors.orange,
                  ),
                  style: theme.textTheme.bodySmall,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: CheckboxListTile(
                    value: _acceptedTerms,
                    onChanged: (value) {
                      setState(() {
                        _acceptedTerms = value ?? false;
                      });
                    },
                    title: Text(
                      "Aceita os termos e condições?",
                      style: theme.textTheme.bodySmall,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => print("fez login"),
                    child: Text(
                      "Criar conta",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                        style: theme.textTheme.bodySmall,
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
                    style: theme.textTheme.bodySmall,
                    children: [
                      TextSpan(text: "Já possui uma conta? "),
                      TextSpan(
                        text: "Acesse aqui",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.primaryColor,
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
