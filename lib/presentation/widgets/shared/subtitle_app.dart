import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final String text;
  final double fontSize;

  const Subtitle({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ));
  }
}
