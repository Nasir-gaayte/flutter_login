import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/my_w/MyTextField.dart';
import 'package:loginapp/my_w/logosign.dart';
import 'package:loginapp/my_w/my_button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();

  final password = TextEditingController();

  void singUIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: username.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
    Navigator.pop(context);
  }

  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Incorrect Email'),
          );
        });
  }

  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Incorrect Password'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.all(25),
                  child: Icon(
                    Icons.login,
                    size: 80,
                    color: Color.fromARGB(255, 100, 255, 66),
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: MyTextField(
                  controller: username,
                  obs: false,
                  hint: 'mail',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: MyTextField(
                  controller: password,
                  obs: true,
                  hint: 'Password',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forgot Password?',
                      style:
                          TextStyle(color: Color.fromARGB(255, 142, 142, 142)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              MyButton(
                onTap: singUIn,
                btname: 'Sign In',
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'or continue with',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 126, 126, 126)),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Logosign(
                      imagepath:
                          '/home/nasir/work/flutterProjects/loginapp/assets/images/googlelogo.png'),
                  Logosign(
                      imagepath:
                          '/home/nasir/work/flutterProjects/loginapp/assets/images/apple.png'),
                ],
              ),
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member?'),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Register now',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
      backgroundColor: const Color.fromARGB(255, 248, 255, 254),
    );
  }
}
