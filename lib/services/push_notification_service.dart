import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:tasty_trove/firebase_options.dart';

// 14:76:AA:67:77:3B:9F:BD:DC:3F:60:E2:0B:9F:39:CD:37:AD:3D:A9

// Platform  Firebase App Id
// web       1:907714433448:web:7b05742111bd99d6eecd9d
// android   1:907714433448:android:17d0e30c3538900beecd9d
// ios       1:907714433448:ios:48d0f68d2565f73deecd9d

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static final StreamController<String> _messageStream =
      StreamController.broadcast();
  static Stream<String> get messageStream => _messageStream.stream;

  static Future _backgroundHandler(RemoteMessage message) async {
    print('_backgroundHandler ${message.messageId}');
    _messageStream.add(message.notification?.body ?? 'Nulo');
    print(message.data);
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    print('_onMessageHandler ${message.messageId}');
    _messageStream.add(message.notification?.body ?? 'Nulo');
    print(message.data['appId']);
  }

  static Future _onMessageOpenAppHandler(RemoteMessage message) async {
    print('_onMessageOpenAppHandler ${message.messageId}');
    _messageStream.add(message.notification?.body ?? 'Nulo');
    print(message.data);
  }

  static Future initializeApp() async {
    //Push notification
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
            alert: true, badge: true, sound: true);

    token = await FirebaseMessaging.instance.getToken();
    print('token $token');

    // Handlers
    // When app is in background
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);

    //  When app is open
    FirebaseMessaging.onMessage.listen(_onMessageHandler);

    // When app is closed
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenAppHandler);

    //local Notification
  }

  static closeStreams() {
    _messageStream.close();
  }
}
