import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tasty_trove/screens/screens.dart';

import 'package:tasty_trove/services/services.dart';
import 'package:tasty_trove/providers/providers.dart';
import 'package:tasty_trove/router/app_routes.dart';
import 'package:tasty_trove/theme/app_theme.dart';

void main() async {
  // We make sure that the application is initialized.
  WidgetsFlutterBinding.ensureInitialized();

  await PushNotificationService.initializeApp();

  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RecipeProvider(),
          lazy: true,
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  void initState() {
    super.initState();

    PushNotificationService.messageStream.listen((message) {
      print('MyApp $message');

      final snackBar = SnackBar(
        content: Text(message),
      );
      messengerKey.currentState?.showSnackBar(snackBar);
      navigatorKey.currentState?.pushReplacementNamed(MainScreen.routeName, arguments: message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasty Trove',
      initialRoute: AppRoutes.initialRoute,
      navigatorKey: navigatorKey, // Navegar
      scaffoldMessengerKey: messengerKey, // SnackBar
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
