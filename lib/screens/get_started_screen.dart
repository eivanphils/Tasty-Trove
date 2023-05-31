import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/widgets/widgets.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final PageController _pageController = PageController();
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(
          child: Column(
        children: [
          Expanded(
              child: PageView(
            controller: _pageController,
            children: const [
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
                    'Let\'s turn "kitchen time" into \'tasty magic\' with recipes that make cooking a breeze!',
                isLastPage: true,
              ),
            ],
            onPageChanged: (value) => selectedIndex.value = value,
          )),
          _BottomPagination(selectedIndex: selectedIndex)
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
                    TextSpan(
                        text: 'Welcome to\n',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    TextSpan(
                        text: 'TASTY\nTROVE\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white)),
                    TextSpan(
                        text: 'Your recipe\nexpedition!',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ]),
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
  final String title;
  final String description;
  final bool isLastPage;

  const _PageLayout(
      {Key? key,
      required this.illustration,
      required this.title,
      required this.description,
      this.isLastPage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            SizedBox(
                width: size.width,
                child: Lottie.asset(illustration, repeat: false)),
            const SizedBox(
              height: 20,
            ),
            Text(title,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Text(description,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center),
            ),
            if (isLastPage)
              const SizedBox(
                height: 80,
              ),
            if (isLastPage)
              SizedBox(
                width: 150,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppTheme.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'START',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
              ),
          ],
        ),
      ),
    );
  }
}

class _BottomPagination extends StatelessWidget {
  final ValueNotifier<int> selectedIndex;

  const _BottomPagination({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, index, child) {
        return Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 32),
          child: Wrap(
              spacing: 8,
              children: List.generate(3, (indexIndicator) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 10,
                  width: indexIndicator == index ? 26 : 10,
                  decoration: BoxDecoration(
                    color: indexIndicator == index ? Colors.white : Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16)
                  ),
                );
              })),
        );
      },
    );
  }
}
