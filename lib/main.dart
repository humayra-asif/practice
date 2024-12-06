import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:practice/firebase_options.dart';
import 'package:practice/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp( MyApp());
  } catch (e) {
    print('Firebase initialization failed: $e');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
