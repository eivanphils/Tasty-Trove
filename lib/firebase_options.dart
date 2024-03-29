// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCdWtUuIhBGpHy1qy971THfttW3aNQDNwI',
    appId: '1:907714433448:web:7b05742111bd99d6eecd9d',
    messagingSenderId: '907714433448',
    projectId: 'flutter-analytics-notification',
    authDomain: 'flutter-analytics-notification.firebaseapp.com',
    storageBucket: 'flutter-analytics-notification.appspot.com',
    measurementId: 'G-0XTWYK00QJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyHh2_jPHGbi-sETFCXtrNeZhwYj6oxLo',
    appId: '1:907714433448:android:17d0e30c3538900beecd9d',
    messagingSenderId: '907714433448',
    projectId: 'flutter-analytics-notification',
    storageBucket: 'flutter-analytics-notification.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTQIgvrfxeS1I0MuYvmhBLqPlYN_mR43I',
    appId: '1:907714433448:ios:39e3254c00a2ce8ceecd9d',
    messagingSenderId: '907714433448',
    projectId: 'flutter-analytics-notification',
    storageBucket: 'flutter-analytics-notification.appspot.com',
    androidClientId: '907714433448-sqjk39c40kvv0s0ftvedhud9ekr9orjf.apps.googleusercontent.com',
    iosClientId: '907714433448-sfrj6l6ptn8s3hfrdkvt6hpgthsdgn02.apps.googleusercontent.com',
    iosBundleId: 'com.eivanphils.tastyTrove',
  );
}
