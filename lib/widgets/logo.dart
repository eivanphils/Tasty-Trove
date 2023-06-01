import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.width, this.isLight = true})
      : super(key: key);

  final double width;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return Image.asset(isLight ? 'assets/logo-white.png' : 'assets/logo.png',
        width: width);
  }
}
