import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../l10n/app_localizations.dart';

class DailyWordCard extends StatelessWidget {
  final String quote;
  final String tip;
  final int day;

  const DailyWordCard({
    super.key,
    required this.quote,
    required this.tip,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      decoration: BoxDecoration(
        gradient: AppColors.dailyWordGradient,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.surface.withValues(alpha: 0.7)),
        boxShadow: [
          BoxShadow(
            color: AppColors.charcoal.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.auto_awesome_outlined,
                size: 14,
                color: AppColors.tealAccent,
              ),
              const SizedBox(width: 6),
              Text(
                l.dailyWordTitle,
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 11,
                  letterSpacing: 0.8,
                  color: AppColors.tealAccent,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  l.dailyWordDay(day),
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 11,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '"$quote"',
            style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
              fontSize: 15,
              height: 1.4,
              letterSpacing: -0.2,
            ),
          ),
          const SizedBox(height: 10),
          Divider(
            height: 1,
            thickness: 1,
            color: AppColors.softPink.withValues(alpha: 0.25),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 1),
                child: Icon(
                  Icons.water_drop_outlined,
                  size: 14,
                  color: AppColors.mutedText,
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: l.dailyWordGentleTip,
                        style: AppStyles.jakartaBoldCharcoal14.copyWith(
                          fontSize: 12,
                          letterSpacing: 0,
                        ),
                      ),
                      TextSpan(
                        text: tip,
                        style: AppStyles.jakartaMediumCharcoal12.copyWith(
                          color: AppColors.charcoal.withValues(alpha: 0.75),
                        ),
                      ),
                    ],
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
