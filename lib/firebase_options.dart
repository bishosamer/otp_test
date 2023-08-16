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
    apiKey: 'AIzaSyDjnhhiuPq7-j7lvv7CsjqjUPQ968-kodY',
    appId: '1:280438892859:web:084246b83120997a6c6f1e',
    messagingSenderId: '280438892859',
    projectId: 'otp-test-fbef7',
    authDomain: 'otp-test-fbef7.firebaseapp.com',
    storageBucket: 'otp-test-fbef7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgAUnhWw8q4JZGaPgxbGIFNadKZzkC8zo',
    appId: '1:280438892859:android:9afe5892dc5dcc7a6c6f1e',
    messagingSenderId: '280438892859',
    projectId: 'otp-test-fbef7',
    storageBucket: 'otp-test-fbef7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3XhYhZ4IgKTaeUiSICR9qeQReh5fq6OM',
    appId: '1:280438892859:ios:ac22ddd32255e72c6c6f1e',
    messagingSenderId: '280438892859',
    projectId: 'otp-test-fbef7',
    storageBucket: 'otp-test-fbef7.appspot.com',
    iosClientId: '280438892859-r8uotucpn4gj6n2gip95ilrbgv2adrrh.apps.googleusercontent.com',
    iosBundleId: 'com.example.otpTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3XhYhZ4IgKTaeUiSICR9qeQReh5fq6OM',
    appId: '1:280438892859:ios:cab5da8fac0fb4976c6f1e',
    messagingSenderId: '280438892859',
    projectId: 'otp-test-fbef7',
    storageBucket: 'otp-test-fbef7.appspot.com',
    iosClientId: '280438892859-rq3p6cklge3b76lhj18e3ja2luri0f24.apps.googleusercontent.com',
    iosBundleId: 'com.example.otpTest.RunnerTests',
  );
}
