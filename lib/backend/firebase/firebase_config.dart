import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAkZed_WRVVuIuZPqWt2OuAuxqZVoNRhXo",
            authDomain: "test-project-biclc3.firebaseapp.com",
            projectId: "test-project-biclc3",
            storageBucket: "test-project-biclc3.firebasestorage.app",
            messagingSenderId: "947510388519",
            appId: "1:947510388519:web:2fcae908cf28cfbfbceb02"));
  } else {
    await Firebase.initializeApp();
  }
}
