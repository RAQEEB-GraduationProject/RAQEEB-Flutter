import 'package:flutter/material.dart';
import 'package:raqeeb/core/theme/app_colors.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';
import 'package:raqeeb/ui/settings/widgets/icon_badge.dart';

class SupportCard extends StatelessWidget {
  const SupportCard({super.key});

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
          _SupportRow(
            icon: Icons.help_outline_rounded,
            iconColor: AppColors.primaryPink,
            iconBg: AppColors.powderPink,
            title: l.settingsHelpGuide,
            subtitle: l.settingsHelpGuideSubtitle,
            subtitleColor: AppColors.mutedText,
            isFirst: true,
          ),
          const Divider(height: 1, indent: 16, endIndent: 16, color: Color(0xFFF0F0F0)),
          _SupportRow(
            icon: Icons.shield_outlined,
            iconColor: AppColors.primaryTeal,
            iconBg: AppColors.aquaTint,
            title: l.settingsPrivacy,
            subtitle: l.settingsPrivacySubtitle,
            subtitleColor: AppColors.primaryTeal,
          ),
          const Divider(height: 1, indent: 16, endIndent: 16, color: Color(0xFFF0F0F0)),
          _SupportRow(
            icon: Icons.info_outline_rounded,
            iconColor: AppColors.mutedText,
            iconBg: const Color(0xFFF0F0F0),
            title: l.settingsAbout,
            subtitle: l.settingsAboutSubtitle,
            subtitleColor: AppColors.mutedText,
            isLast: true,
          ),
        ],
      ),
    );
  }
}

class _SupportRow extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String subtitle;
  final Color subtitleColor;
  final bool isFirst;
  final bool isLast;

  const _SupportRow({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.subtitle,
    required this.subtitleColor,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.vertical(
        top: isFirst ? const Radius.circular(16) : Radius.zero,
        bottom: isLast ? const Radius.circular(16) : Radius.zero,
      ),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            IconBadge(icon: icon, iconColor: iconColor, bgColor: iconBg),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: AppStyles.jakartaMediumCharcoal12.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 2),
                  Text(subtitle,
                      style: AppStyles.jakartaMediumMuted12.copyWith(
                        letterSpacing: 0,
                        color: subtitleColor,
                      )),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded, size: 18, color: AppColors.mutedText),
          ],
        ),
      ),
    );
  }
}
