import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raqeeb/core/theme/app_colors.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  static const Color _logoutRed = Color(0xFFDC2626);
  static const Color _logoutRedBg = Color(0xFFFEEBEB);

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 24 + bottomPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 20),
            width: 36,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFD1D1D1),
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Logout icon badge
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              color: _logoutRedBg,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.logout_rounded,
                size: 32, color: _logoutRed),
          ),
          const SizedBox(height: 16),

          // Title
          Text(
            l.logoutTitle,
            style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),

          // Body text with highlight
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: AppStyles.jakartaRegularMuted16.copyWith(fontSize: 14),
              children: [
                TextSpan(text: l.logoutBody),
                TextSpan(
                  text: l.logoutHighlight,
                  style: AppStyles.jakartaRegularMuted16.copyWith(
                    fontSize: 14,
                    color: _logoutRed,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(text: l.logoutBodySuffix),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Patient summary box
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFFEEEEEE)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildFaAvatar(),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l.settingsPatientName,
                            style: AppStyles.jakartaMediumCharcoal12.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'ID: ${l.settingsPatientId}',
                            style: AppStyles.jakartaMediumMuted12.copyWith(
                              letterSpacing: 0,
                              color: _logoutRed,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildPill(
                      l.logoutPatientAccountPill,
                      bgColor: const Color(0xFFEEEEEE),
                      textColor: AppColors.mutedText,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColors.stableGreenBg,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.check_rounded,
                          size: 13, color: AppColors.stableGreen),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l.logoutSyncNote,
                        style: AppStyles.jakartaMediumMuted12.copyWith(
                          letterSpacing: 0,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Yes, Log Out button
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: _logoutRed,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.logout_rounded, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    l.logoutConfirm,
                    style: AppStyles.jakartaBoldSurface14.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Cancel button
          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: () => Navigator.of(context).pop(false),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.charcoal,
                side: const BorderSide(color: Color(0xFFE0E0E0)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                backgroundColor: const Color(0xFFF5F5F5),
              ),
              child: Text(
                l.logoutCancel,
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 14,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),

          // Urgent link footer
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_outlined, size: 14, color: AppColors.primaryPink),
                const SizedBox(width: 6),
                Text(
                  l.logoutUrgentLink,
                  style: AppStyles.jakartaMediumPrimaryPink12.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.primaryPink,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFaAvatar({double size = 44}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        'FA',
        style: GoogleFonts.plusJakartaSans(
          fontSize: size * 0.33,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildPill(
    String label, {
    required Color bgColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
