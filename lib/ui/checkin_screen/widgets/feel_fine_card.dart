import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import 'select_indicator.dart';

class FeelFineCard extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  const FeelFineCard({super.key, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: selected ? AppColors.softPink : AppColors.trackGrey,
              width: selected ? 2 : 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: const BoxDecoration(
                  color: AppColors.tealBg,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.sentiment_satisfied_alt_rounded,
                  size: 24,
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I feel fine',
                      style: AppStyles.jakartaBoldCharcoal14.copyWith(
                        fontSize: 15,
                        letterSpacing: 0,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'No active discomfort or side effects to report',
                      style: AppStyles.jakartaRegularCharcoal16.copyWith(
                        fontSize: 12,
                        color: AppColors.charcoal.withValues(alpha: 0.75),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              SelectIndicator(selected: selected),
            ],
          ),
        ),
      ),
    );
  }
}
