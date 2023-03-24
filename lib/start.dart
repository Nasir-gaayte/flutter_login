import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Image(
                image: AssetImage(
                    '/home/nasir/work/flutterProjects/loginapp/assets/images/login.jpeg')),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(
                  text: 'welcome to ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  children: [
                    TextSpan(
                        text: 'loginApp',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange))
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Test my self in flutter ',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.lightGreen,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text('LOGIN'),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color.fromARGB(255, 248, 195, 59),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.app_registration),
                  label: const Text('REGISTER'),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SignInButton(Buttons.Google, onPressed: () {}),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 25, 24, 24),
    );
  }
}
