import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonWelcome extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const ButtonWelcome({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton.filled(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const Button({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
