import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF44CC77);
  static const Color secondaryColor = Color(0xFF24A755);
  static const Color orangeColor = Color(0xFFFF9647);
  static const String logo = 'assets/logo.png';
  static const String logoWhite = 'assets/logo-white.png';
  static const double radius = 15;

  static ThemeData lightTheme = ThemeData(useMaterial3: true).copyWith(
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      labelStyle: TextStyle(color: orangeColor),
      floatingLabelStyle: TextStyle(color: Colors.black),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: orangeColor),
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: orangeColor),
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
    ),
  );
}
