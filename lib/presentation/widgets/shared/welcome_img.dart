import 'package:flutter/material.dart';

class PictureBox extends StatelessWidget {
  final BoxDecoration decorationBox;
  final Widget images;

  const PictureBox(
      {super.key, required this.decorationBox, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 418,
      width: 343.07,
      child: DecoratedBox(
          decoration: decorationBox,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Padding(padding: const EdgeInsets.all(2), child: images))),
    );
  }
}
