import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF44CC77);
  static const Color secondaryColor = Color(0xFF24A755);
  static const Color greenColor = Color(0xFF7BD09B);
  static const Color orangeColor = Color(0xFFFF9647);
  static const Color greyColor = Color(0xFF404040);
  static const Color yellowColor = Color(0xFFFFD698);
  static const Color brownColor = Color(0xFF99766E);

  static const String logo = 'assets/logo.png';
  static const String logoWhite = 'assets/logo-white.png';
  static const double radius = 15;
  static const String imageDemo =
      'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg';
  static BoxShadow boxShadow() {
    return const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.2),
        blurRadius: 4,
        spreadRadius: 1,
        offset: Offset(0, 1.5));
  }

  static const List<Color> colors = [
    primaryColor,
    secondaryColor,
    orangeColor,
    brownColor,
    yellowColor,
    Colors.amber,
    Colors.cyan,
    Colors.blue,
    Colors.indigo,
    Colors.lightBlue
  ];

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
      navigationBarTheme: NavigationBarThemeData(
          indicatorColor: AppTheme.orangeColor,
          backgroundColor: AppTheme.primaryColor,
          iconTheme: MaterialStateProperty.all<IconThemeData>(
              const IconThemeData(color: Colors.white, size: 25)),
          labelTextStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Colors.white))),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(orangeColor.withOpacity(0.5)),
      )));
}
