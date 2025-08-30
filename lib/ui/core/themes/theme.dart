import 'package:mobile_app/ui/core/ui/tag_chip.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class AppTheme {
  static final _textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: AppColors.lightColorScheme.primary,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.lightColorScheme.onSurface,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.lightColorScheme.onSurface,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.lightColorScheme.onSurface,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.lightColorScheme.onSurface,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.lightColorScheme.onSurfaceVariant,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.lightColorScheme.onSurfaceVariant,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.lightColorScheme.onSurfaceVariant,
    ),
  );

  static InputDecorationTheme inputDecorationTheme(ColorScheme colors) =>
      InputDecorationTheme(
        hintStyle: TextStyle(
          color: colors.onSurfaceVariant,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: TextStyle(
          color: colors.onSurface, // muda automaticamente no dark mode
          fontSize: 12, // aqui você define o tamanho pequeno
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
      );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: AppColors.lightColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: AppTheme.inputDecorationTheme(
      AppColors.lightColorScheme,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.vibrantGreen,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.vibrantGreen,
        side: BorderSide(color: AppColors.vibrantGreen, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),
    extensions: [
      TagChipTheme(
        chipColor: AppColors.whiteTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: AppColors.darkColorScheme,
    textTheme: _textTheme.apply(
      bodyColor: AppColors.darkColorScheme.onSurface,
      displayColor: AppColors.darkColorScheme.onSurface,
    ),
    inputDecorationTheme: AppTheme.inputDecorationTheme(
      AppColors.darkColorScheme,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.vibrantGreen,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.vibrantGreen,
        side: BorderSide(color: AppColors.vibrantGreen, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
    extensions: [
      TagChipTheme(
        chipColor: AppColors.blackTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );
}
