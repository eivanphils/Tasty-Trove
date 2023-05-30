import 'package:flutter/material.dart';

import 'package:tasty_trove/theme/app_theme.dart';

class OnboardingBackground extends StatelessWidget {
  final Widget child;

  const OnboardingBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppTheme.primaryColor,
      child: Stack(children: [
        const Positioned(bottom: -350, left: 0, child: _GreenShape()),
        child,
      ]),
    );
  }
}

class _GreenShape extends StatelessWidget {
  const _GreenShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 900,
      height: 800,
      decoration: const BoxDecoration(
        color: AppTheme.secondaryColor,
        borderRadius: BorderRadius.all(Radius.elliptical(900, 800)),
      ),
    );
  }
}
