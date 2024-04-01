import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SquareLogos extends StatelessWidget {
  final String imagePath;
  const SquareLogos({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      height: 60,
      width: 70,
      child: SvgPicture.asset(imagePath),
    );
  }
}
