import 'package:flutter/material.dart';

class TextWelcome extends StatelessWidget {
  final String text;
  final TextStyle style;

  const TextWelcome(
      {super.key,
      required this.text,
      this.style = const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(10, 10, 10, 1),
      )});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
