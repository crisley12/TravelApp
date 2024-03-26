
import 'package:flutter/cupertino.dart';

class ButtonNone extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const ButtonNone({
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
