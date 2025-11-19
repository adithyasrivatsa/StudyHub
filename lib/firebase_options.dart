import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAVZLPjETOpsg51q40-X42CLOdSh_UvfTY',
    appId: '1:373106333405:web:66401566e6f7ed663a2d34',
    messagingSenderId: '373106333405',
    projectId: 'studyhub-ebbfc',
    authDomain: 'studyhub-ebbfc.firebaseapp.com',
    storageBucket: 'studyhub-ebbfc.firebasestorage.app',
    measurementId: 'G-G9V1S1HFVM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBajtO8KgKfqprC3gN4HufGYhRLGDr8bjY',
    appId: '1:373106333405:android:2b26fbac45dd1ba13a2d34',
    messagingSenderId: '373106333405',
    projectId: 'studyhub-ebbfc',
    storageBucket: 'studyhub-ebbfc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR_IOS_API_KEY',
    appId: '1:YOUR_APP_ID:ios:YOUR_IOS_APP_ID',
    messagingSenderId: 'YOUR_SENDER_ID',
    projectId: 'studyhub-app',
    iosBundleId: 'com.studyhub.app',
    storageBucket: 'studyhub-app.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'YOUR_MACOS_API_KEY',
    appId: '1:YOUR_APP_ID:macos:YOUR_MACOS_APP_ID',
    messagingSenderId: 'YOUR_SENDER_ID',
    projectId: 'studyhub-app',
    iosBundleId: 'com.studyhub.app',
    storageBucket: 'studyhub-app.appspot.com',
  );
}