import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../l10n/app_localizations.dart';
import '../../sos_screens/widgets/sos_card.dart';

enum DoseStatus { pending, taken, skipped }

class ScheduleItem {
  final String time;
  final String title;
  final String status;
  final Color color;

  const ScheduleItem({
    required this.time,
    required this.title,
    required this.status,
    required this.color,
  });
}

class MedicationCard extends StatelessWidget {
  final String name;
  final String dose;
  final String period;
  final String dueText;
  final DoseStatus status;
  final List<ScheduleItem> schedule;
  final String nextDose;
  final VoidCallback onTaken;
  final VoidCallback onSkip;
  final VoidCallback onViewSchedule;

  const MedicationCard({
    super.key,
    required this.name,
    required this.dose,
    required this.period,
    required this.dueText,
    required this.status,
    required this.schedule,
    required this.nextDose,
    required this.onTaken,
    required this.onSkip,
    required this.onViewSchedule,
  });

  String _subtitle(AppLocalizations l) => switch (status) {
        DoseStatus.pending => dueText,
        DoseStatus.taken => l.medSubtitleTaken,
        DoseStatus.skipped => l.medSubtitleSkipped,
      };

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return SosCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: AppColors.tealBg,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.diamond_outlined,
                  size: 22,
                  color: AppColors.tealAccent,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            style: AppStyles.jakartaBoldCharcoal14.copyWith(
                              fontSize: 16,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 7,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.charcoal.withValues(alpha: 0.07),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            dose,
                            style: AppStyles.jakartaMediumMuted12.copyWith(
                              fontSize: 10.5,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _subtitle(l),
                      style: AppStyles.jakartaMediumMuted12.copyWith(
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                decoration: BoxDecoration(
                  color: AppColors.limeGreen.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      size: 13,
                      color: AppColors.charcoal,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      period,
                      style: AppStyles.jakartaBoldCharcoal14.copyWith(
                        fontSize: 11,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: _DoseButton(
                  label: status == DoseStatus.taken ? l.medButtonTakenDone : l.medButtonTaken,
                  icon: status == DoseStatus.taken
                      ? Icons.check_circle_rounded
                      : Icons.check_rounded,
                  background: status == DoseStatus.taken
                      ? AppColors.stableGreen
                      : AppColors.limeGreen,
                  foreground: status == DoseStatus.taken
                      ? AppColors.surface
                      : AppColors.charcoal,
                  active: status == DoseStatus.taken,
                  dimmed: status == DoseStatus.skipped,
                  onTap: onTaken,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 3,
                child: _DoseButton(
                  label: status == DoseStatus.skipped ? l.medButtonSkippedDone : l.medButtonSkip,
                  icon: status == DoseStatus.skipped
                      ? Icons.close_rounded
                      : Icons.access_time_rounded,
                  background: status == DoseStatus.skipped
                      ? AppColors.highRiskOrange
                      : AppColors.tealBg,
                  foreground: status == DoseStatus.skipped
                      ? AppColors.surface
                      : AppColors.charcoal.withValues(alpha: 0.7),
                  active: status == DoseStatus.skipped,
                  dimmed: status == DoseStatus.taken,
                  onTap: onSkip,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Divider(
            height: 1,
            thickness: 1,
            color: AppColors.charcoal.withValues(alpha: 0.08),
          ),
          const SizedBox(height: 12),
          for (final item in schedule) ...[
            _ScheduleRow(item: item),
            const SizedBox(height: 10),
          ],
          const SizedBox(height: 2),
          Row(
            children: [
              Expanded(
                child: Text(
                  nextDose,
                  style: AppStyles.jakartaMediumMuted12.copyWith(
                    fontSize: 11.5,
                    letterSpacing: 0,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: onViewSchedule,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    l.medViewSchedule,
                    style: AppStyles.jakartaBoldCharcoal14.copyWith(
                      fontSize: 12,
                      letterSpacing: 0,
                      color: AppColors.tealAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DoseButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color background;
  final Color foreground;
  // The button the patient chose: solid color + glow.
  final bool active;
  // The other button once a choice is made: faded out.
  final bool dimmed;
  final VoidCallback onTap;

  const _DoseButton({
    required this.label,
    required this.icon,
    required this.background,
    required this.foreground,
    required this.active,
    required this.dimmed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: dimmed ? 0.5 : 1,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 44,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(22),
          boxShadow: active
              ? [
                  BoxShadow(
                    color: background.withValues(alpha: 0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(22),
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 16, color: foreground),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 13.5,
                    letterSpacing: 0,
                    color: foreground,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ScheduleRow extends StatelessWidget {
  final ScheduleItem item;

  const _ScheduleRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(color: item.color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            '${item.time} • ${item.title}',
            style: AppStyles.jakartaMediumCharcoal12.copyWith(
              fontSize: 11.5,
              color: AppColors.charcoal.withValues(alpha: 0.8),
            ),
          ),
        ),
        Text(
          item.status,
          style: AppStyles.jakartaMediumMuted12.copyWith(
            fontSize: 11.5,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}
