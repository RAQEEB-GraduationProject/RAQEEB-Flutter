import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../l10n/app_localizations.dart';
import '../../sos_screens/widgets/sos_card.dart';

class CareJourneyCard extends StatelessWidget {
  final int completed;
  final int total;
  final bool checkinDone;
  final int medsTaken;
  final int medsTotal;

  const CareJourneyCard({
    super.key,
    required this.completed,
    required this.total,
    required this.checkinDone,
    required this.medsTaken,
    required this.medsTotal,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final double progress = total == 0 ? 0 : completed / total;
    final int percent = (progress * 100).round();

    return SosCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  l.careJourneyTitle,
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 15,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              Text(
                l.careJourneyProgress(completed, total, percent),
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 13,
                  letterSpacing: 0,
                  color: AppColors.tealAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 8,
              color: AppColors.trackGrey,
              alignment: Alignment.centerLeft,
              child: AnimatedFractionallySizedBox(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeOut,
                widthFactor: progress,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.softPink, AppColors.limeGreen],
                    ),
                  ),
                  child: SizedBox.expand(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _JourneyChip(
                label: checkinDone ? l.journeyCheckinDone : l.journeyCheckinPending,
                icon: checkinDone ? Icons.check_circle : Icons.circle,
                iconSize: checkinDone ? 12 : 7,
                color: AppColors.tealAccent,
                background: AppColors.tealBg,
              ),
              _JourneyChip(
                label: l.journeyMedsTaken(medsTaken, medsTotal),
                icon: Icons.check_rounded,
                iconSize: 12,
                color: AppColors.stableGreen,
                background: AppColors.limeGreen.withValues(alpha: 0.35),
              ),
              _JourneyChip(
                label: l.journeyHydrationOnTrack,
                icon: Icons.water_drop_outlined,
                iconSize: 12,
                color: AppColors.skyBlue,
                background: AppColors.skyBlueBg,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _JourneyChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final double iconSize;
  final Color color;
  final Color background;

  const _JourneyChip({
    required this.label,
    required this.icon,
    required this.iconSize,
    required this.color,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: color.withValues(alpha: 0.25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: iconSize, color: color),
          const SizedBox(width: 5),
          Text(
            label,
            style: AppStyles.jakartaBoldCharcoal14.copyWith(
              fontSize: 11.5,
              letterSpacing: 0,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
