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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAjh_-q6pkslNDWfAv_BrPT18SLQFSQ6ks',
    appId: '1:966797184287:web:69b348d186b28a21dcb42a',
    messagingSenderId: '966797184287',
    projectId: 'hammer-hands-2',
    authDomain: 'hammer-hands-2.firebaseapp.com',
    storageBucket: 'hammer-hands-2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4CC-QMzmy_sDJMP8Ps-Li1N9swXIisAM',
    appId: '1:966797184287:android:eca102a989874dd9dcb42a',
    messagingSenderId: '966797184287',
    projectId: 'hammer-hands-2',
    storageBucket: 'hammer-hands-2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCr1BMbi7NLEeq7SGcy2oXLftPqVKSses8',
    appId: '1:966797184287:ios:205ba83df522ed6ddcb42a',
    messagingSenderId: '966797184287',
    projectId: 'hammer-hands-2',
    storageBucket: 'hammer-hands-2.appspot.com',
    iosBundleId: 'com.example.example',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCr1BMbi7NLEeq7SGcy2oXLftPqVKSses8',
    appId: '1:966797184287:ios:205ba83df522ed6ddcb42a',
    messagingSenderId: '966797184287',
    projectId: 'hammer-hands-2',
    storageBucket: 'hammer-hands-2.appspot.com',
    iosBundleId: 'com.example.example',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAjh_-q6pkslNDWfAv_BrPT18SLQFSQ6ks',
    appId: '1:966797184287:web:f91a65fe9104854fdcb42a',
    messagingSenderId: '966797184287',
    projectId: 'hammer-hands-2',
    authDomain: 'hammer-hands-2.firebaseapp.com',
    storageBucket: 'hammer-hands-2.appspot.com',
  );
}