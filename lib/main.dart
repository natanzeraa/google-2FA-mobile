import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository.dart';
import 'package:mobile_app/data/services/api/auth_service.dart';
import 'package:mobile_app/routing/router.dart';
import 'package:mobile_app/ui/auth/view_model/auth_view_model.dart';
import 'package:mobile_app/ui/core/themes/theme.dart';
import 'package:mobile_app/ui/core/ui/scroll_behavior.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  runApp(
    ChangeNotifierProvider(
      create: (_) => AuthViewModel(repository: AuthRepository(AuthService())),
      child: const MyApp(),
    )
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
      routerConfig: router(AuthViewModel(repository: AuthRepository(AuthService()))),
    );
  }
}
