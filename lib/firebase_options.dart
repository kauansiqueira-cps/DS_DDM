// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyD5DpyRKN3ABB0U5q6yyOKwRxrE_cjOaiQ',
    appId: '1:465914414608:web:50278a1ccbd3edc1ffac95',
    messagingSenderId: '465914414608',
    projectId: 'truquin-fe',
    authDomain: 'truquin-fe.firebaseapp.com',
    storageBucket: 'truquin-fe.appspot.com',
    measurementId: 'G-EM320LDPL2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCA0MEHzDXEn20wGHN0WOOF42lZIOpRMwI',
    appId: '1:465914414608:android:650c3f57618524bdffac95',
    messagingSenderId: '465914414608',
    projectId: 'truquin-fe',
    storageBucket: 'truquin-fe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjgrHE73QBCV-A_I-iK1ljz-30UJRblcs',
    appId: '1:465914414608:ios:1238fde390a4a215ffac95',
    messagingSenderId: '465914414608',
    projectId: 'truquin-fe',
    storageBucket: 'truquin-fe.appspot.com',
    iosBundleId: 'com.example.truco',
  );
}
