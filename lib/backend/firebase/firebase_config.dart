import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAD1A9a6AzvFyB05aNUXx1HInffq2YYWlE",
            authDomain: "polihackk.firebaseapp.com",
            projectId: "polihackk",
            storageBucket: "polihackk.firebasestorage.app",
            messagingSenderId: "800079870029",
            appId: "1:800079870029:web:99e5cea4f5fb53dd26c404",
            measurementId: "G-ZYECVL9GPR"));
  } else {
    await Firebase.initializeApp();
  }
}
