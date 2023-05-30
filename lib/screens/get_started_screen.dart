import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'package:tasty_trove/widgets/widgets.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(
          child: Column(
        children: [
          Expanded(
              child: PageView(children: const [
            _InitialPage(),
            _PageLayout(
                illustration: 'assets/animations/recipes.json',
                title: 'Find recipes',
                description:
                    'Unleash your inner \'flavor-seeker\' and embark on a culinary adventure!'),
            _PageLayout(
                illustration: 'assets/animations/ratings.json',
                title: 'Easy to cook',
                description:
                    'Let\'s turn "kitchen time" into \'tasty magic\' with recipes that make cooking a breeze!'),
          ]))
        ],
      )),
    );
  }
}

class _InitialPage extends StatelessWidget {
  const _InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [

        Positioned(
          top: size.height * 0.08,
          left: 30,
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(text: 'Welcome to\n', style: TextStyle(fontSize: 18, color: Colors.white)),
                TextSpan(text: 'TASTY\nTROVE\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white)),
                TextSpan(text: 'Your recipe\nexpedition!', style: TextStyle(fontSize: 18, color: Colors.white)),
              ]
            ),
          )),


        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/chef.png',
              height: size.width,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}

class _PageLayout extends StatelessWidget {
  final String illustration;
  final String? title;
  final String? description;

  const _PageLayout(
      {Key? key, required this.illustration, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
              height: size.height * 0.6,
              width: size.width,
              child: Lottie.asset(illustration))
        ],
      ),
    );
  }
}
