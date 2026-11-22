import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';
import 'package:raqeeb/presentation/app_styles.dart';

class StatusTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? extra;

  const StatusTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.extra,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.charcoal.withValues(alpha: 0.06),
          ),
          child: Icon(icon, size: 18, color: AppColors.mutedText),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 13,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: AppStyles.jakartaMediumMuted12.copyWith(
                  fontSize: 11,
                  letterSpacing: 0,
                ),
              ),
              if (extra != null) ...[const SizedBox(height: 3), extra!],
            ],
          ),
        ),
      ],
    );
  }
}
