import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color colorButton, colorText;
  final IconData? iconApp;
  final Function()? onPressed;

  const Button({
    super.key,
    required this.text,
    this.iconApp,
    required this.colorButton,
    required this.colorText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Material(
        color: colorButton,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(text,
                  style: TextStyle(
                      color: colorText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              const SizedBox(width: 10),
              Icon(iconApp, color: Colors.white),
            ]),
          ),
        ),
      ),
    );
  }
}
