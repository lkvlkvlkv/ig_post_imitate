import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  const RoundedImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Image.asset(imagePath, width: 32, height: 32, fit: BoxFit.cover),
      ),
    );
  }
}
