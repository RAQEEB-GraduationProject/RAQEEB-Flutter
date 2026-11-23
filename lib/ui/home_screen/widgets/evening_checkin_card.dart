import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';

enum Mood { great, okay, notGreat }

extension MoodX on Mood {
  String get emoji => switch (this) {
        Mood.great => '😊',
        Mood.okay => '😐',
        Mood.notGreat => '😔',
      };

  String get label => switch (this) {
        Mood.great => "I'm Great",
        Mood.okay => "I'm Okay",
        Mood.notGreat => 'Not Great',
      };
}

class EveningCheckinCard extends StatelessWidget {
  final String dueTime;
  final bool completed;
  final Mood? selectedMood; // null until the patient taps an emoji
  final ValueChanged<Mood> onMoodSelected;
  final VoidCallback onStart;

  const EveningCheckinCard({
    super.key,
    required this.dueTime,
    required this.completed,
    required this.selectedMood,
    required this.onMoodSelected,
    required this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.darkCard,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: AppColors.deepInk.withValues(alpha: 0.18),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: _StatusChip(completed: completed, dueTime: dueTime),
          ),
          const SizedBox(height: 14),
          Text(
            'How did today feel?',
            style: AppStyles.jakartaBoldSurface14.copyWith(
              fontSize: 22,
              letterSpacing: -0.4,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Tell us how you feel today.',
            style: AppStyles.jakartaRegularMuted16.copyWith(
              fontSize: 13,
              color: AppColors.surface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              for (final mood in Mood.values) ...[
                Expanded(
                  child: _MoodButton(
                    mood: mood,
                    selected: mood == selectedMood,
                    enabled: !completed,
                    onTap: () => onMoodSelected(mood),
                  ),
                ),
                if (mood != Mood.values.last) const SizedBox(width: 8),
              ],
            ],
          ),
          const SizedBox(height: 16),
          _StartButton(completed: completed, onTap: onStart),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final bool completed;
  final String dueTime;

  const _StatusChip({required this.completed, required this.dueTime});

  @override
  Widget build(BuildContext context) {
    final Color bg = completed ? AppColors.limeGreen : AppColors.checkinYellow;
    final Color dot = completed ? AppColors.stableGreen : AppColors.checkinOrange;
    final String text =
        completed ? 'COMPLETED' : 'NOT COMPLETED • DUE $dueTime';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(color: dot, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              text,
              style: AppStyles.jakartaBoldCharcoal14.copyWith(
                fontSize: 11,
                letterSpacing: 0.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MoodButton extends StatelessWidget {
  final Mood mood;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  const _MoodButton({
    required this.mood,
    required this.selected,
    required this.enabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface.withValues(alpha: selected ? 0.16 : 0.06),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: enabled ? onTap : null,
        child: Container(
          height: 92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.surface.withValues(alpha: selected ? 0.4 : 0.12),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(mood.emoji, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text(
                mood.label,
                style: AppStyles.jakartaMediumCharcoal12.copyWith(
                  fontSize: 12.5,
                  color: AppColors.surface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StartButton extends StatelessWidget {
  final bool completed;
  final VoidCallback onTap;

  const _StartButton({required this.completed, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final Color bg = completed
        ? AppColors.surface.withValues(alpha: 0.12)
        : AppColors.softPink;

    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(26),
        boxShadow: completed
            ? null
            : [
                BoxShadow(
                  color: AppColors.softPink.withValues(alpha: 0.35),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(26),
          onTap: completed ? null : onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                completed ? 'Check-in Completed' : 'Start Evening Check-in',
                style: AppStyles.jakartaBoldSurface14.copyWith(fontSize: 15),
              ),
              const SizedBox(width: 8),
              Icon(
                completed ? Icons.check_rounded : Icons.arrow_forward_rounded,
                size: 18,
                color: AppColors.surface,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
