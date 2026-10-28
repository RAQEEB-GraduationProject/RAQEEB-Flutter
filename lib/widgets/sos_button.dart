import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';
import 'package:raqeeb/presentation/app_styles.dart';


enum SosButtonType { danger, primary, neutral }

class SosButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;
  final SosButtonType type;

  const SosButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.type = SosButtonType.neutral,
  });

  @override
  Widget build(BuildContext context) {
    final bool filled = type != SosButtonType.neutral;
    final Color bg = switch (type) {
      SosButtonType.danger => AppColors.criticalRed,
      SosButtonType.primary => AppColors.primaryPink,
      SosButtonType.neutral => AppColors.charcoal.withValues(alpha: 0.07),
    };
    final TextStyle textStyle = filled
        ? AppStyles.jakartaBoldSurface14.copyWith(fontSize: 15)
        : AppStyles.jakartaBoldCharcoal14.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0,
          );
    final Color iconColor = filled
        ? AppColors.surface
        : (type == SosButtonType.neutral ? AppColors.charcoal : AppColors.surface);

    return Container(
      width: double.infinity,
      height: filled ? 50 : 44,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(25),
        boxShadow: filled
            ? [
                BoxShadow(
                  color: bg.withValues(alpha: 0.35),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 18, color: iconColor),
                const SizedBox(width: 8),
              ],
              Text(text, style: textStyle),
            ],
          ),
        ),
      ),
    );
  }
}
