import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class MyHome extends StatelessWidget {
  MyHome({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: signOut, icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(child: Text('your are login as' + user.email!)),
    );
  }
}
