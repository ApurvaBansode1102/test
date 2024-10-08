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
    apiKey: 'AIzaSyAdOVv81_mnKzdC4AT9dOdoZNEJJeXkzUk',
    appId: '1:715979476710:web:655640c81a112766ba3527',
    messagingSenderId: '715979476710',
    projectId: 'day24-a62a7',
    authDomain: 'day24-a62a7.firebaseapp.com',
    storageBucket: 'day24-a62a7.appspot.com',
    measurementId: 'G-FNLC50Y02K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5xeDFXBHkuxCixeKPDq8jJpMBCw53bo0',
    appId: '1:715979476710:android:cf8b6b8aa14c23a7ba3527',
    messagingSenderId: '715979476710',
    projectId: 'day24-a62a7',
    storageBucket: 'day24-a62a7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXUAb8u_mzyEWQZt4rb3mL2zUzRUPB9-0',
    appId: '1:715979476710:ios:6b0cce66aa1ca7ecba3527',
    messagingSenderId: '715979476710',
    projectId: 'day24-a62a7',
    storageBucket: 'day24-a62a7.appspot.com',
    iosBundleId: 'com.example.thirtyWidgets',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDXUAb8u_mzyEWQZt4rb3mL2zUzRUPB9-0',
    appId: '1:715979476710:ios:6b0cce66aa1ca7ecba3527',
    messagingSenderId: '715979476710',
    projectId: 'day24-a62a7',
    storageBucket: 'day24-a62a7.appspot.com',
    iosBundleId: 'com.example.thirtyWidgets',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdOVv81_mnKzdC4AT9dOdoZNEJJeXkzUk',
    appId: '1:715979476710:web:280e595895842041ba3527',
    messagingSenderId: '715979476710',
    projectId: 'day24-a62a7',
    authDomain: 'day24-a62a7.firebaseapp.com',
    storageBucket: 'day24-a62a7.appspot.com',
    measurementId: 'G-1TXK089LHB',
  );
}
