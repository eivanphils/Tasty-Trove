import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:tasty_trove/screens/screens.dart';
import 'package:tasty_trove/theme/app_theme.dart';
import 'package:tasty_trove/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingBackground(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(
              width: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Tasty Trove',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Your recipe expedition!',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 60,
            ),
            _LoginForm(),
          ],
        ),
      )),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Form(
          child: Column(
        children: [
          TextFormField(
            cursorColor: AppTheme.orangeColor,
            decoration: const InputDecoration(
              label: Text('Email'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            obscureText: true,
            cursorColor: AppTheme.orangeColor,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Password'),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 240,
            height: 50,
            child: ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacementNamed(context, MainScreen.routeName);
                  await FirebaseAnalytics.instance.logEvent(
                    name: 'page_tracked',
                    parameters: {
                        'page_name': MainScreen.routeName,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppTheme.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      )),
    );
  }
}
