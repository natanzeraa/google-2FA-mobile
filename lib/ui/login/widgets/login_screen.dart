import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/ui/login/view_model/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.viewModel});

  final LoginViewModel viewModel;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   widget.viewModel.shareBooking.addListener(_listener);
  // }

  // @override
  // void dispose() {
  //   widget.viewModel.shareBooking.removeListener(_listener);
  //   super.dispose();
  // }

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
                  child: Text("Login", style: theme.textTheme.headlineLarge),
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

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Esqueceu sua senha?",
                    style: theme.textTheme.bodySmall,
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => print("fez login"),
                    child: Text(
                      "Entrar",
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
                        "Ou entre com",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  ],
                ),

                Padding(padding: EdgeInsets.all(15)),

                OutlinedButton.icon(
                  onPressed: () => print("Login com Google"),
                  icon: Image.asset(
                    "assets/google_logo.png",
                    height: 24,
                    width: 24,
                  ),
                  label: Text(
                    "Entrar com Google",
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

                Text(
                  "Ainda não possui uma conta?",
                  style: theme.textTheme.bodySmall,
                ),

                Padding(padding: EdgeInsets.all(10)),
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
                      style: theme.textTheme.bodyMedium,
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
