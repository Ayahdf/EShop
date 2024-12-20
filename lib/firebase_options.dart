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

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjbl0QwZNNhftUI4-H3ngFLxDyKQOwJ9s',
    appId: '1:289895469426:ios:e9248f14585ba13a61cdeb',
    messagingSenderId: '289895469426',
    projectId: 'fbeshop-8c401',
    storageBucket: 'fbeshop-8c401.firebasestorage.app',
    iosBundleId: 'com.example.eshop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAbBjvs7sEN6809C8b45g_cAaFCdX6hPX8',
    appId: '1:289895469426:web:2efad986cb0db94061cdeb',
    messagingSenderId: '289895469426',
    projectId: 'fbeshop-8c401',
    authDomain: 'fbeshop-8c401.firebaseapp.com',
    storageBucket: 'fbeshop-8c401.firebasestorage.app',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAbBjvs7sEN6809C8b45g_cAaFCdX6hPX8',
    appId: '1:289895469426:web:2efad986cb0db94061cdeb',
    messagingSenderId: '289895469426',
    projectId: 'fbeshop-8c401',
    authDomain: 'fbeshop-8c401.firebaseapp.com',
    storageBucket: 'fbeshop-8c401.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjbl0QwZNNhftUI4-H3ngFLxDyKQOwJ9s',
    appId: '1:289895469426:ios:e9248f14585ba13a61cdeb',
    messagingSenderId: '289895469426',
    projectId: 'fbeshop-8c401',
    storageBucket: 'fbeshop-8c401.firebasestorage.app',
    iosBundleId: 'com.example.eshop',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3fIvY2zpU5W8at7QiM9iWj46IrGZ80Hs',
    appId: '1:289895469426:android:60c2d31406ecd99c61cdeb',
    messagingSenderId: '289895469426',
    projectId: 'fbeshop-8c401',
    storageBucket: 'fbeshop-8c401.firebasestorage.app',
  );

}