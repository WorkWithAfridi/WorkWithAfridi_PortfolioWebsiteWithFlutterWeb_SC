import 'package:flutter/material.dart';
import 'package:workwithafridi/app/data/constants/colors.dart';

class CustomTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
    primaryColor: primary,
    scaffoldBackgroundColor: cream,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: red,
      onPrimary: white,
      secondary: navyBlue,
      onSecondary: white,
      error: red,
      onError: white,
      background: white,
      onBackground: black,
      surface: white,
      onSurface: black,
    ),
  );
}
