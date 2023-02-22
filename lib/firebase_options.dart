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
    apiKey: 'AIzaSyDMiy4PteJy3qNlBoAnsKDQ8w5ZtVt7VOg',
    appId: '1:766724149176:web:b751fe7971855d2cac094d',
    messagingSenderId: '766724149176',
    projectId: 'cheearn-38f69',
    authDomain: 'cheearn-38f69.firebaseapp.com',
    storageBucket: 'cheearn-38f69.appspot.com',
    measurementId: 'G-1878DNYM9L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFjkpvRFasj_KS0NqdQQDSlO0E6030LDw',
    appId: '1:766724149176:android:ceed7095ca25fe2dac094d',
    messagingSenderId: '766724149176',
    projectId: 'cheearn-38f69',
    storageBucket: 'cheearn-38f69.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5ZTh4R5iWzmpDgMNMzwHA4IWHzaWy48w',
    appId: '1:766724149176:ios:4245cf3f4f8179f7ac094d',
    messagingSenderId: '766724149176',
    projectId: 'cheearn-38f69',
    storageBucket: 'cheearn-38f69.appspot.com',
    iosClientId: '766724149176-lpn67msj1kdanjttonpdh7fvv2kg96aq.apps.googleusercontent.com',
    iosBundleId: 'com.example.echessapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5ZTh4R5iWzmpDgMNMzwHA4IWHzaWy48w',
    appId: '1:766724149176:ios:4245cf3f4f8179f7ac094d',
    messagingSenderId: '766724149176',
    projectId: 'cheearn-38f69',
    storageBucket: 'cheearn-38f69.appspot.com',
    iosClientId: '766724149176-lpn67msj1kdanjttonpdh7fvv2kg96aq.apps.googleusercontent.com',
    iosBundleId: 'com.example.echessapp',
  );
}
