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
        return macos;
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
    apiKey: 'AIzaSyAcnLFRxd6pYA905csY0OWmOq0Af9SMfnc',
    appId: '1:1082981314332:web:c19ba5f8dda606e50754d9',
    messagingSenderId: '1082981314332',
    projectId: 'loginapp-e99a4',
    authDomain: 'loginapp-e99a4.firebaseapp.com',
    storageBucket: 'loginapp-e99a4.appspot.com',
    measurementId: 'G-YZ2F647QMH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMASMXEsIM7Pwil-BgEDMMIH-XYiWRJpA',
    appId: '1:1082981314332:android:02f51c3131040e6d0754d9',
    messagingSenderId: '1082981314332',
    projectId: 'loginapp-e99a4',
    storageBucket: 'loginapp-e99a4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALx86jdiRG9Dg1d8_R59cWPf3sZ2Zc7Uk',
    appId: '1:1082981314332:ios:787716783f402c4c0754d9',
    messagingSenderId: '1082981314332',
    projectId: 'loginapp-e99a4',
    storageBucket: 'loginapp-e99a4.appspot.com',
    iosClientId: '1082981314332-ngbq8cqghgmt0o5g2of3bv40jv9cidmk.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyALx86jdiRG9Dg1d8_R59cWPf3sZ2Zc7Uk',
    appId: '1:1082981314332:ios:787716783f402c4c0754d9',
    messagingSenderId: '1082981314332',
    projectId: 'loginapp-e99a4',
    storageBucket: 'loginapp-e99a4.appspot.com',
    iosClientId: '1082981314332-ngbq8cqghgmt0o5g2of3bv40jv9cidmk.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginapp',
  );
}
