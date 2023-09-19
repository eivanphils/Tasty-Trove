import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    PushNotificationService.messageStream.listen((message) {
      print('MyApp $message');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasty Trove',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
