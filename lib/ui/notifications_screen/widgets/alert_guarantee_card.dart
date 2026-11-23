import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../l10n/app_localizations.dart';

class AlertGuaranteeCard extends StatelessWidget {
  const AlertGuaranteeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.tealBg.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.tealBg,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.surface.withValues(alpha: 0.6)),
            ),
            child: const Icon(
              Icons.gpp_good_outlined,
              size: 19,
              color: AppColors.tealAccent,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l.alertGuaranteeTitle,
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 12.5,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  l.alertGuaranteeBody,
                  style: AppStyles.jakartaRegularCharcoal16.copyWith(
                    fontSize: 11.5,
                    color: AppColors.charcoal.withValues(alpha: 0.85),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
