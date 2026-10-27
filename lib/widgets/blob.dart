import 'package:flutter/material.dart';

class Blob extends StatelessWidget {

  final Color coloring;
  final double size;
  
  const Blob({super.key, required this.coloring, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [coloring.withValues(alpha: 0.7), coloring.withValues(alpha: 0.0)],
        ),
      ),
    );
  }
}
