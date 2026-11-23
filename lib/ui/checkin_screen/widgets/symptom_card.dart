import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../data/models/symptom.dart';
import '../../../l10n/app_localizations.dart';
import 'select_indicator.dart';

class SymptomCard extends StatelessWidget {
  final Symptom symptom;
  final bool selected;
  final VoidCallback onTap;

  const SymptomCard({
    super.key,
    required this.symptom,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: selected ? AppColors.softPink : AppColors.trackGrey,
              width: selected ? 2 : 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: AppColors.tealBg,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      symptom.icon,
                      size: 24,
                      color: selected
                          ? AppColors.tealAccent
                          : AppColors.charcoal.withValues(alpha: 0.6),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          symptom.nameLocalized(l),
                          style: AppStyles.jakartaBoldCharcoal14.copyWith(
                            fontSize: 17,
                            letterSpacing: -0.2,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          symptom.descriptionLocalized(l),
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
              if (selected) ...[
                const SizedBox(height: 12),
                const Divider(height: 1, color: AppColors.trackGrey),
                const SizedBox(height: 10),
                Text(
                  l.symptomSeverityFollow,
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 11,
                    letterSpacing: 0,
                    color: AppColors.tealAccent,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
