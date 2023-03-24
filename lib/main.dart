import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:loginapp/auth_page.dart';

import 'firebase_options.dart';
// import 'start.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
    );
  }
}
