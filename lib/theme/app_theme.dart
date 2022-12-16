import 'package:flutter/material.dart';

class AppThemeData {
  // Colors: Main Colors
  static const Color primaryColor = Color.fromRGBO(254, 0, 76, 1.0);
  static const Color secondaryColor = Color.fromRGBO(25, 25, 25, 1.0);

  // Colors: Text
  static const textPrimary = Color.fromRGBO(254, 0, 76, 1.0);
  static const textWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static const textGreyDark = Color.fromRGBO(147, 147, 147, 1.0);
  static const textGreyLight = Color.fromRGBO(205, 205, 205, 1.0);
  static const textCursor = Color.fromRGBO(61, 61, 61, 1.0);

  // Colors: Buttons and Icons
  static const buttonPrimary = Color.fromRGBO(254, 0, 76, 1.0);
  static const buttonSecondary = Color.fromRGBO(50, 50, 50, 1.0);
  static const iconPrimary = Color.fromRGBO(254, 0, 76, 1.0);
  static const iconSecondary = Color.fromRGBO(255, 255, 255, 1.0);

  // Colors: Background and Cards
  static const backgroundBlack = Color.fromRGBO(18, 18, 18, 1.0);
  static const backgroundGrey = Color.fromRGBO(25, 25, 25, 1.0);
  static const cardGrey = Color.fromRGBO(15, 15, 15, 1.0);

  // Radius
  static const double cornerRadiusCard = 40.0;
  static const double cornerRadiusCardButton = 30.0;

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    primaryColor: primaryColor,
    backgroundColor: backgroundBlack,
    scaffoldBackgroundColor: primaryColor,
    fontFamily: 'Poppins',
    iconTheme: const IconThemeData(color: iconPrimary),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionColor: textCursor,
      selectionHandleColor: textPrimary,
    ),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
          fontSize: 54.0,
          fontWeight: FontWeight.w700,
          color: AppThemeData.textWhite),
      headlineSmall: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: AppThemeData.textPrimary),
      titleLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w500,
          color: AppThemeData.textGreyDark),
      titleMedium: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: AppThemeData.textWhite),
    ),
  );
}
