import 'package:mobile_app/routing/router.dart';
import 'package:mobile_app/ui/core/themes/theme.dart';
import 'package:mobile_app/ui/core/ui/scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_development.dart' as development;

void main() {
  development.main();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppCustomScrollBehavior(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router(context.read()),
    );
  }
}
