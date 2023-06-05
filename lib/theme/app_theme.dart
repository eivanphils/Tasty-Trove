import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF44CC77);
  static const Color secondaryColor = Color(0xFF24A755);
  static const Color orangeColor = Color(0xFFFF9647);
  static const Color greyColor = Color(0xFF404040);
  static const Color yellowColor = Color(0xFFFFD698);
  static const Color brownColor = Color(0xFF99766E);

  static const String logo = 'assets/logo.png';
  static const String logoWhite = 'assets/logo-white.png';
  static const double radius = 15;
  static const String imageDemo =
      'https://edamam-product-images.s3.amazonaws.com/web-img/f85/f857ae2eef731292fd68c853d4621875-l.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEO3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJHMEUCIDaPg62%2FbF9p6nDx%2F5DfZE1Kj%2B3imsXSonu3gADsAOU8AiEAmE0yOSgBQjN387%2FfccdL0VjuFC%2F0uDVwc8iPo7tdruoquQUINhAAGgwxODcwMTcxNTA5ODYiDMJKUcU9eyQqMyF6eiqWBRyOav8eYuvGIx9ZntuRjevcpY9AKfpc51cHXGZvbmyl%2FpkEmmyFYd%2FCNiOsVbe2RH94kezZ6xtf8gNEpAMqmVERqm3%2FcSLqDx935BHGjho1OZw62Euy313qbDFhzE9qlGzwISOXvxMML8HZnBgzrd1GAgc17f1D92nCNuHQyx2RtAp043KtyQJL6P4ml04o0LHINDb28LNnf4qVVQJpjcix8WFdiYPuPslQ4KEuUJIx3PCVD4Fa0DDUIWVMytykBeOj4rWunPxCYo2xQWZLnL2yZuB1el4je7xrizVTI%2BBlQv%2F4DkF4tfbFAYOrhGtU358vELeZDf0L9uHAA2%2F%2FkHb%2BTxzt5OnpkJAN4lKvIU7k8s928EzrAiSd0g5hYq2wYQo3UmMfymsbgRTkkReco%2BcQIRtkDKGZmZoLwZoYYyyGPdVS7gmstNHzG9nKprNdbTDg%2BXm8gUrK%2Ftxuyb25B3Cra73VdKOAjgvDXtBjfRhoyAF27cAo21cAcuxmQpm3j4egHpL240lzxfwU7EexvZnc8WE7D81ZOABLwETllhZLicHVhaMWS2kbXAwidvm5OJ6CuLAtRkMsAQkceFedzG9Q1HKLLX3ezT6KNnKB%2FIDbjqE0wcVQl0yC2%2BZZYN4ovn3Uj2FJxbmMGby%2BicxfLIXpaEK5RTx8aHk%2F7rdME84o7PiIsC5h2pcoBZ9fl2b5N2bUASZZFzT5mkZsdZRTAXf0Uzr03u0kE9qcze%2BapGPuk1Crn%2BYd%2FuQhP5NUJh1WfI7%2FsTSdO3w5GIFJtAuH59VZo1ckdPWBwcMc78hIEdJbgiLQSL8fZCmpryPTWCNtIY9t8GUCoe8wku%2F%2BtxMz8sNK%2BV3AK1g3JLHHFTSRQzsZmcJ2E%2BCUMOmI%2BaMGOrEB0HbWXRBn1IlVnmClkDeMkf3%2FxfeTVTXJc8OymS0YDH8qLLUFJJxAzVtgT7y0iUkUx1v46LTRQlOsbzRx3FElBJqZMuyMP2b6Q%2B42rVrGd%2B4An3pn2prMLvmLOEz7Skq%2BqdE9hQ%2Bjjv6PZwNDHHwcdmRVCz7dGb5t%2B%2FolVDClTMHWfpmH55h%2BDqE12aqpxrqkH9CzsUfhcDY0q0Ia0TbAqMOgEyifXgQBPGFt7M5QxdjC&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230605T212906Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFIDXIDI2H%2F20230605%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=0abba4167ed4ea461d0ec182a12fb19692036c35daee075c5f3ec9d9801f035c';
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
    yellowColor
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
