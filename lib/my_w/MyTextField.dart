// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final bool obs;
  final String hint;
  const MyTextField({
    super.key,
    required this.controller,
    required this.obs,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obs,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 8, 74, 139))),
        fillColor: const Color.fromARGB(255, 215, 255, 255),
        filled: true,
      ),
    );
  }
}
