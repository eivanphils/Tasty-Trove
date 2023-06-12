import 'package:flutter/material.dart';

import 'package:tasty_trove/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'get-started';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      GetStartedScreen.routeName: (BuildContext context) => const GetStartedScreen(),
      LoginScreen.routeName: (BuildContext context) => const LoginScreen(),
      MainScreen.routeName: (BuildContext context) => const MainScreen(),
      HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
      ProfileScreen.routeName: (BuildContext context) => const ProfileScreen(),
      SettingsScreen.routeName: (BuildContext context) => const SettingsScreen(),
      RecipeDetailScreen.routeName: (BuildContext context) => const RecipeDetailScreen(),
    };
   
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => const GetStartedScreen()));
  }
}
