import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (kIsWeb) {
      return const FirebaseOptions(
        appId: '1:663979992385:web:435a88f184e3469cac2dc0',
        apiKey: 'AIzaSyCvVD5RBFBr_CXI2yHzfxXErSvGaRSZD-c',
        projectId: 'novashop-983aa',
        messagingSenderId: '663979992385',
        authDomain: 'novashop-983aa.firebaseapp.com',
        storageBucket: 'novashop-983aa.appspot.com',
      );
    } else if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:663979992385:ios:5b77b6da377b1b0bac2dc0',
        apiKey: 'AIzaSyApYxXvg0ZYtRBDP97uR2tY5qRx2MVpRDM',
        projectId: 'novashop-983aa',
        messagingSenderId: '663979992385',
        iosBundleId: 'com.example.novashop',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:663979992385:android:b76fbdb532a42aceac2dc0',
        apiKey: 'AIzaSyBD4ETRKGLl3X8wUBztqaO4j_DxJqz_kBA',
        projectId: 'novashop-983aa',
        messagingSenderId: '663979992385',
      );
    }
  }
}
