import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  final String text;
  final double fontSize;

  const TitleApp({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(10, 10, 10, 1),
      ),
    );
  }
}
