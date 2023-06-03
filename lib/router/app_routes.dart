import 'package:flutter/material.dart';

import 'package:tasty_trove/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'get-started';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      'get-started': (BuildContext context) => const GetStartedScreen(),
      'login': (BuildContext context) => const LoginScreen(),
      'main': (BuildContext context) => const MainScreen(),
      'home': (BuildContext context) => const HomeScreen(),
      'profile': (BuildContext context) => const ProfileScreen(),
      'settings': (BuildContext context) => const SettingsScreen(),
    };
   
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => const GetStartedScreen()));
  }
}
