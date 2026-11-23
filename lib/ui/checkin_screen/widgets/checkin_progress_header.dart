import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../l10n/app_localizations.dart';

class CheckinProgressHeader extends StatelessWidget {
  final int step;
  final int totalSteps;
  final String title;

  const CheckinProgressHeader({
    super.key,
    required this.step,
    required this.totalSteps,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final double progress = step / totalSteps;
    final int percent = (progress * 100).round();

    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColors.softPink,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$step',
                style: AppStyles.jakartaBoldSurface14.copyWith(
                  fontSize: 12,
                  letterSpacing: 0,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                l.checkinStepProgress(step, totalSteps, title),
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 12,
                  letterSpacing: 0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: AppColors.limeGreen,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                l.checkinPercentDone(percent),
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 11,
                  letterSpacing: 0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            backgroundColor: AppColors.tealBg,
            valueColor: const AlwaysStoppedAnimation(AppColors.softPink),
          ),
        ),
      ],
    );
  }
}
