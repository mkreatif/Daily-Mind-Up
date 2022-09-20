import 'package:flutter/material.dart';
import 'dart:math';

const List<Color> defaultColors = [Colors.blue, Colors.red];

class GradientText extends StatelessWidget {
  final String label;
  final double size;
  final List<Color> colors;
  const GradientText(
      {Key? key,
      required this.label,
      this.size = 12,
      this.colors = defaultColors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
              colors: colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: GradientRotation(pi / 4))
          .createShader(bounds),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
