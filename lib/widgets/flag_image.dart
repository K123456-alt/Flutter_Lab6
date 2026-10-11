import 'package:flutter/material.dart';

class FlagImage extends StatelessWidget {
  final String imagePath;

  const FlagImage(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        imagePath,
        width: 320,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}