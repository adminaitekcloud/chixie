import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA4f5IPhQ9sCo_7LdE-4Mgz42N3boxXXpo",
            authDomain: "master23-9c6a4.firebaseapp.com",
            projectId: "master23-9c6a4",
            storageBucket: "master23-9c6a4.appspot.com",
            messagingSenderId: "430564149345",
            appId: "1:430564149345:web:6cb83d6f9884add2ca0220",
            measurementId: "G-EQSR59Z8SX"));
  } else {
    await Firebase.initializeApp();
  }
}
