import 'package:mobile_app/config/dependencies.dart';
import 'package:mobile_app/main.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

void main() {
  Logger.root.level = Level.ALL;
  runApp(MultiProvider(providers: providersLocal, child: const MainApp()));
}
