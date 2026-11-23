import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';

class CheckinBottomBar extends StatelessWidget {
  final String summary;
  final bool enabled;
  final String continueLabel;
  final String backLabel;
  final VoidCallback onContinue;
  final VoidCallback onBack;

  const CheckinBottomBar({
    super.key,
    required this.summary,
    required this.enabled,
    required this.continueLabel,
    required this.backLabel,
    required this.onContinue,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const SizedBox(width: 4),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: enabled ? AppColors.softPink : AppColors.disabledGrey,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              summary,
              style: AppStyles.jakartaBoldCharcoal14.copyWith(
                fontSize: 12,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 52,
          decoration: BoxDecoration(
            color: enabled ? AppColors.softPink : AppColors.disabledGrey,
            borderRadius: BorderRadius.circular(26),
            boxShadow: enabled
                ? [
                    BoxShadow(
                      color: AppColors.softPink.withValues(alpha: 0.35),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    ),
                  ]
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(26),
              onTap: enabled ? onContinue : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    continueLabel,
                    style: enabled
                        ? AppStyles.jakartaBoldSurface14.copyWith(fontSize: 15)
                        : AppStyles.jakartaBoldDisabled14.copyWith(fontSize: 15),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 18,
                    color: enabled ? AppColors.surface : AppColors.mutedText,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        TextButton.icon(
          onPressed: onBack,
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 18,
            color: AppColors.charcoal,
          ),
          label: Text(
            backLabel,
            style: AppStyles.jakartaMediumCharcoal12.copyWith(fontSize: 13),
          ),
        ),
      ],
    );
  }
}
