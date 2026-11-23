import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raqeeb/core/theme/app_colors.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';

class StatusPill extends StatelessWidget {
  const StatusPill({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFEEEEEE)),
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: AppColors.primaryPink.withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.favorite_rounded, size: 12, color: AppColors.primaryPink),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              l.settingsCareJourneyStatus,
              style: AppStyles.jakartaMediumCharcoal12.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: const Color(0xFFDDF3E4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Color(0xFF16A34A),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  l.settingsSynced,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF16A34A),
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
