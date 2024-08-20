import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD9QYpfUa42-Nd8vUPglun43jVWKYWVxaE",
            authDomain: "academic-ballers.firebaseapp.com",
            projectId: "academic-ballers",
            storageBucket: "academic-ballers.appspot.com",
            messagingSenderId: "545177776822",
            appId: "1:545177776822:web:df5710616f0abb7a12ec17",
            measurementId: "G-F4W8QSRW8X"));
  } else {
    await Firebase.initializeApp();
  }
}
