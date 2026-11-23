import 'package:flutter/material.dart';
import 'package:raqeeb/core/theme/app_colors.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';
import 'package:raqeeb/ui/settings/language_bottom_sheet.dart';
import 'package:raqeeb/ui/settings/widgets/icon_badge.dart';

class PreferencesCard extends StatelessWidget {
  final bool alertsEnabled;
  final ValueChanged<bool> onAlertsChanged;
  final bool highContrastEnabled;
  final ValueChanged<bool> onHighContrastChanged;

  const PreferencesCard({
    super.key,
    required this.alertsEnabled,
    required this.onAlertsChanged,
    required this.highContrastEnabled,
    required this.onHighContrastChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // App Language row
          InkWell(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (_) => const LanguageBottomSheet(),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  const IconBadge(
                    icon: Icons.language_rounded,
                    iconColor: AppColors.primaryTeal,
                    bgColor: AppColors.aquaTint,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l.settingsAppLanguage,
                            style: AppStyles.jakartaMediumCharcoal12.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                        const SizedBox(height: 2),
                        Text(l.settingsAppLanguageSubtitle,
                            style: AppStyles.jakartaMediumMuted12.copyWith(
                              letterSpacing: 0,
                            )),
                      ],
                    ),
                  ),
                  Text(
                    l.settingsAppLanguageCurrent,
                    style: AppStyles.jakartaMediumCharcoal12.copyWith(
                      color: AppColors.primaryTeal,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.chevron_right_rounded,
                      size: 18, color: AppColors.mutedText),
                ],
              ),
            ),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16, color: Color(0xFFF0F0F0)),
          // Check-in & Medication Alerts
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                const IconBadge(
                  icon: Icons.notifications_active_outlined,
                  iconColor: AppColors.primaryPink,
                  bgColor: AppColors.powderPink,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l.settingsCheckinAlerts,
                          style: AppStyles.jakartaMediumCharcoal12.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(height: 2),
                      Text(l.settingsCheckinAlertsSubtitle,
                          style: AppStyles.jakartaMediumMuted12.copyWith(
                            letterSpacing: 0,
                          )),
                    ],
                  ),
                ),
                Switch(
                  value: alertsEnabled,
                  onChanged: onAlertsChanged,
                  activeColor: AppColors.primaryPink,
                  activeTrackColor: AppColors.primaryPink.withOpacity(0.35),
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: AppColors.disabledGrey,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ],
            ),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16, color: Color(0xFFF0F0F0)),
          // High-Contrast & Large Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                const IconBadge(
                  icon: Icons.remove_red_eye_outlined,
                  iconColor: AppColors.mutedText,
                  bgColor: Color(0xFFF0F0F0),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l.settingsHighContrast,
                          style: AppStyles.jakartaMediumCharcoal12.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(height: 2),
                      Text(l.settingsHighContrastSubtitle,
                          style: AppStyles.jakartaMediumMuted12.copyWith(
                            letterSpacing: 0,
                          )),
                    ],
                  ),
                ),
                Switch(
                  value: highContrastEnabled,
                  onChanged: onHighContrastChanged,
                  activeColor: AppColors.primaryPink,
                  activeTrackColor: AppColors.primaryPink.withOpacity(0.35),
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: AppColors.disabledGrey,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
