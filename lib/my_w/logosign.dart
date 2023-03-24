import 'package:flutter/material.dart';

class Logosign extends StatelessWidget {
  final String imagepath;
  const Logosign({
    super.key,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8)),
      child: Image.asset(
        imagepath,
        height: 40,
      ),
    );
  }
}
