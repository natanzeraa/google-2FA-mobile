import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Home"),
            TextButton(
              onPressed: () => context.go("/login"),
              child: Text("Sair", style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
