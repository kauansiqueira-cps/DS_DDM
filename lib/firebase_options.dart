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
    apiKey: 'AIzaSyCPo_ZyAyVsY-mXhwkGKBSf11TU9VTrYrk',
    appId: '1:835285996685:web:9808706fd3dab3c271bec4',
    messagingSenderId: '835285996685',
    projectId: 'eutruco-aea6b',
    authDomain: 'eutruco-aea6b.firebaseapp.com',
    databaseURL: 'https://eutruco-aea6b-default-rtdb.firebaseio.com',
    storageBucket: 'eutruco-aea6b.appspot.com',
    measurementId: 'G-3GDVM6BZ9N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvB8YhOf2tHUWp3bmsV424AZvPvp6PGAc',
    appId: '1:835285996685:android:0853b0116a7b0c1871bec4',
    messagingSenderId: '835285996685',
    projectId: 'eutruco-aea6b',
    databaseURL: 'https://eutruco-aea6b-default-rtdb.firebaseio.com',
    storageBucket: 'eutruco-aea6b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0ZpT_8m_OOxTRmVRodHFBukGA5w9MSLw',
    appId: '1:835285996685:ios:0d5175c930d772ce71bec4',
    messagingSenderId: '835285996685',
    projectId: 'eutruco-aea6b',
    databaseURL: 'https://eutruco-aea6b-default-rtdb.firebaseio.com',
    storageBucket: 'eutruco-aea6b.appspot.com',
    iosBundleId: 'com.example.euTruco',
  );

}