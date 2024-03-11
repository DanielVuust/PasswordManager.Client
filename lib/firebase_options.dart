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
    apiKey: 'AIzaSyC3vneUcO80F_Vh4GIEH4PDYD1DgsP-nNc',
    appId: '1:631769932989:web:a315b30ad8a7dee1ee83d4',
    messagingSenderId: '631769932989',
    projectId: 'lockhive-cbc3a',
    authDomain: 'lockhive-cbc3a.firebaseapp.com',
    storageBucket: 'lockhive-cbc3a.appspot.com',
    measurementId: 'G-7P2GP60HTF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkJSVZ3pcNoc4jBLnaubmZkoBbTuRbz1A',
    appId: '1:631769932989:android:ee3c61d7f364f13bee83d4',
    messagingSenderId: '631769932989',
    projectId: 'lockhive-cbc3a',
    storageBucket: 'lockhive-cbc3a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUQNqQk4V07ozOa0tbvbpUULg8wBYZMLY',
    appId: '1:631769932989:ios:c9c0a8520c917478ee83d4',
    messagingSenderId: '631769932989',
    projectId: 'lockhive-cbc3a',
    storageBucket: 'lockhive-cbc3a.appspot.com',
    iosBundleId: 'com.example.passwordManagerClient',
  );
}
