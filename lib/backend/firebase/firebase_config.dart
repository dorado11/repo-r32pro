import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBnLs4TAQnfWoTM8YkIXrCgoIK35jiuYms",
            authDomain: "databaser32-d7267.firebaseapp.com",
            projectId: "databaser32-d7267",
            storageBucket: "databaser32-d7267.appspot.com",
            messagingSenderId: "890225007433",
            appId: "1:890225007433:web:e3fc54fdff227786655898"));
  } else {
    await Firebase.initializeApp();
  }
}
