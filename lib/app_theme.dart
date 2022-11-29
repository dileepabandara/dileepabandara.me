import 'package:flutter/material.dart';

class AppThemeData {
  // Accent Color
  static const accentPrimary = Color.fromRGBO(4, 192, 141, 1.0);

  // Background
  static const backgroundLight = Color.fromRGBO(25, 25, 25, 1.0);
  static const backgroundDarken = Color.fromRGBO(6, 6, 6, 1.0);
  static const backgroundDisabled = Color.fromRGBO(63, 63, 63, 1.0);

  // Greyscale
  static const textPrimary = Color.fromRGBO(255, 255, 255, 1.0);
  static const textSecondary = Color.fromRGBO(92, 92, 92, 1.0);
  static const textTertiary = Color.fromRGBO(116, 116, 116, 1.0);
  static const textQuaternary = Color.fromRGBO(24, 24, 24, 1.0);
  static const textDisabled = Color.fromRGBO(138, 138, 138, 1.0);
  static const icons = Color.fromRGBO(255, 255, 255, 1.0);
  static const stroke = Color.fromRGBO(215, 215, 215, 1.0);
  static const dividers = Color.fromRGBO(103, 103, 103, 1.0);

  // Radius
  static const double appCornerRadius = 20.0;

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    primaryColor: accentPrimary,
    backgroundColor: backgroundDarken,
    scaffoldBackgroundColor: backgroundDarken,
    fontFamily: 'Poppins',
    iconTheme: const IconThemeData(color: icons),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: accentPrimary,
      selectionColor: textSecondary,
      selectionHandleColor: textPrimary,
    ),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.w700,
          color: AppThemeData.textPrimary),
      headlineLarge: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.w500,
          color: AppThemeData.textPrimary),
      headlineSmall: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.normal,
          color: AppThemeData.textPrimary),
      titleLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: AppThemeData.textPrimary),
      bodyMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: AppThemeData.textPrimary),
    ),
  );
}
