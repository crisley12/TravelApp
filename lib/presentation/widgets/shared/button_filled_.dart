import 'package:flutter/cupertino.dart';

class ButtonFilled extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const ButtonFilled({
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

