
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAxKb4x7MBCPrwk-n-hLhm9PKc9RWhABwA',
    appId: '1:453829112125:web:3fdf7875805301bee6d554',
    messagingSenderId: '453829112125',
    projectId: 'salespro-19e86',
    authDomain: 'salespro-19e86.firebaseapp.com',
    storageBucket: 'salespro-19e86.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcJmvjcGT2_YUhN3BQXH2FKZY9t43KmFg',
    appId: '1:330543656803:android:e912a35bbdfdebe92f2d56',
    messagingSenderId: '330543656803	',
    projectId: 'footware-admin-cbc5b',
    storageBucket: 'footware-admin-cbc5b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB56-PHqeSbH0fPkcWaQoSQ54junxge0TQ',
    appId: '1:270785036491:android:7f7b6765ed4fe0b3991b4e',
    messagingSenderId: '270785036491',
    projectId: 'student-management-11713',
    storageBucket: 'student-management-11713.appspot.com',
  );
}