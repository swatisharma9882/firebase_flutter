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
    apiKey: 'AIzaSyAtdtpx76XnEKT7JL0ljO_puMLvtUwEc6Y',
    appId: '1:1027080235214:web:3f093b82885a5a7a9b889f',
    messagingSenderId: '1027080235214',
    projectId: 'demoapp-90623',
    authDomain: 'demoapp-90623.firebaseapp.com',
    storageBucket: 'demoapp-90623.appspot.com',
    measurementId: 'G-NLZD0S67F2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiD3PWB_9ZmO-JMs26K2jZAk8XnIrghPE',
    appId: '1:1027080235214:android:7ad5e6bad9ea420f9b889f',
    messagingSenderId: '1027080235214',
    projectId: 'demoapp-90623',
    storageBucket: 'demoapp-90623.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBozppieXPyaK5Yh_pM0XPvZ6fNZI2egxM',
    appId: '1:1027080235214:ios:7f9c0f4dedbcaa399b889f',
    messagingSenderId: '1027080235214',
    projectId: 'demoapp-90623',
    storageBucket: 'demoapp-90623.appspot.com',
    iosBundleId: 'com.example.flutterFirebase',
  );
}
