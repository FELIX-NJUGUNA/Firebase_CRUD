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
    apiKey: 'AIzaSyA8n3hB5hxBFSmeoty0mzP8lkZNRrmYgg0',
    appId: '1:406539745438:web:403f0988a774984098638f',
    messagingSenderId: '406539745438',
    projectId: 'crud-5f990',
    authDomain: 'crud-5f990.firebaseapp.com',
    storageBucket: 'crud-5f990.appspot.com',
    measurementId: 'G-3CVM6YHED9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBeofl9aFhwiLtNJnXc-vu4ycZN0b4SRbU',
    appId: '1:406539745438:android:c096af21bd9cfafa98638f',
    messagingSenderId: '406539745438',
    projectId: 'crud-5f990',
    storageBucket: 'crud-5f990.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqwumKi2FhGqH0Oaudhh0e6LZ0D9VgnmE',
    appId: '1:406539745438:ios:5a8439a1ba9b023d98638f',
    messagingSenderId: '406539745438',
    projectId: 'crud-5f990',
    storageBucket: 'crud-5f990.appspot.com',
    iosBundleId: 'com.example.crudOnlineDb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqwumKi2FhGqH0Oaudhh0e6LZ0D9VgnmE',
    appId: '1:406539745438:ios:5a8439a1ba9b023d98638f',
    messagingSenderId: '406539745438',
    projectId: 'crud-5f990',
    storageBucket: 'crud-5f990.appspot.com',
    iosBundleId: 'com.example.crudOnlineDb',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA8n3hB5hxBFSmeoty0mzP8lkZNRrmYgg0',
    appId: '1:406539745438:web:d3e83ec78ddd5cb798638f',
    messagingSenderId: '406539745438',
    projectId: 'crud-5f990',
    authDomain: 'crud-5f990.firebaseapp.com',
    storageBucket: 'crud-5f990.appspot.com',
    measurementId: 'G-X21M7YSVK3',
  );
}