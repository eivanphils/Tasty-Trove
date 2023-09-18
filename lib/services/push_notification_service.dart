import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// 14:76:AA:67:77:3B:9F:BD:DC:3F:60:E2:0B:9F:39:CD:37:AD:3D:A9

// Platform  Firebase App Id
// web       1:907714433448:web:7b05742111bd99d6eecd9d
// android   1:907714433448:android:17d0e30c3538900beecd9d
// ios       1:907714433448:ios:48d0f68d2565f73deecd9d

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future initializeApp() async {
    //Push notification
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('token $token');

  
    //local Notification
  }
}