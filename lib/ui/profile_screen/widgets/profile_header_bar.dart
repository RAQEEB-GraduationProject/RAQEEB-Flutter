import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../l10n/app_localizations.dart';

class ProfileHeaderBar extends StatelessWidget {
  final VoidCallback onSettingsTap;

  const ProfileHeaderBar({super.key, required this.onSettingsTap});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(
            color: AppColors.charcoal.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Container(
            width: 32,
            height: 32,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'R',
              style: AppStyles.jakartaBoldSurface14.copyWith(
                fontSize: 17,
                letterSpacing: 0,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l.appName,
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 16,
                  letterSpacing: 0.3,
                  color: AppColors.tealAccent,
                ),
              ),
              Text(
                l.profileCarePlatform,
                style: AppStyles.jakartaMediumMuted12.copyWith(
                  fontSize: 10,
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            tooltip: l.settingsTitle,
            icon: const Icon(
              Icons.settings_outlined,
              color: AppColors.charcoal,
            ),
            onPressed: onSettingsTap,
          ),
        ],
      ),
    );
  }
}
