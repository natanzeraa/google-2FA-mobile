import 'package:flutter/material.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository.dart';
import 'package:mobile_app/data/services/api/auth_service.dart';
import 'package:mobile_app/routing/router.dart';
import 'package:mobile_app/ui/core/themes/theme.dart';
import 'package:mobile_app/ui/core/ui/scroll_behavior.dart';
import 'package:mobile_app/ui/login/view_model/login_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthRepository>(create: (_) => AuthRepository(AuthService())),
        ChangeNotifierProvider<LoginViewModel>(
          create: (context) =>
              LoginViewModel(repository: context.read<AuthRepository>()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppCustomScrollBehavior(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
