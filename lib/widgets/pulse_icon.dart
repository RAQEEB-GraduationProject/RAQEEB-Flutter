import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';

/// Round icon surrounded by two soft rings (used for the SOS alert / success).
class PulseIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color ringColor;
  final Color iconColor;
  final double size;

  const PulseIcon({
    super.key,
    required this.icon,
    required this.color,
    required this.ringColor,
    this.iconColor = AppColors.surface,
    this.size = 90,
  });

  Widget _circle(double d, Color c) => Container(
        width: d,
        height: d,
        decoration: BoxDecoration(shape: BoxShape.circle, color: c),
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _circle(size, ringColor.withValues(alpha: 0.35)),
          _circle(size * 0.76, ringColor.withValues(alpha: 0.65)),
          Container(
            width: size * 0.52,
            height: size * 0.52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              boxShadow: [
                BoxShadow(
                  color: color.withValues(alpha: 0.35),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(icon, size: size * 0.27, color: iconColor),
          ),
        ],
      ),
    );
  }
}
