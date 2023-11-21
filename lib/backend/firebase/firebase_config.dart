import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDTUQZh49xrkq1lqLOEw1DuZujOGOq8whQ",
            authDomain: "cocolap-dee33.firebaseapp.com",
            projectId: "cocolap-dee33",
            storageBucket: "cocolap-dee33.appspot.com",
            messagingSenderId: "100570155502",
            appId: "1:100570155502:web:dda9550cd5f22a6d00e6ff",
            measurementId: "G-139VZCT4F6"));
  } else {
    await Firebase.initializeApp();
  }
}
