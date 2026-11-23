import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raqeeb/core/theme/app_colors.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';

enum _AppLanguage { english, arabic }

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  _AppLanguage _selected = _AppLanguage.english;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 24 + bottomPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drag handle
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12, bottom: 16),
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFD1D1D1),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          // Header row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.language_rounded,
                  size: 22, color: AppColors.primaryPink),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  l.langSheetTitle,
                  style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F0F0),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.close_rounded,
                      size: 18, color: Colors.black54),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            l.langSheetSubtitle,
            style: AppStyles.jakartaRegularMuted16.copyWith(fontSize: 13),
          ),
          const SizedBox(height: 16),

          // English card
          _buildLanguageCard(
            isSelected: _selected == _AppLanguage.english,
            onTap: () => setState(() => _selected = _AppLanguage.english),
            name: l.langEnglishName,
            tag: l.langEnglishTag,
            pill: l.langEnglishActivePill,
            pillColor: AppColors.stableGreen,
            pillBg: AppColors.stableGreenBg,
            detail: l.langEnglishDetail,
            voiceNote: l.langEnglishVoice,
            voiceColor: AppColors.primaryPink,
            checkColor: AppColors.primaryPink,
          ),
          const SizedBox(height: 10),

          // Arabic card
          _buildLanguageCard(
            isSelected: _selected == _AppLanguage.arabic,
            onTap: () => setState(() => _selected = _AppLanguage.arabic),
            name: l.langArabicName,
            tag: l.langArabicTag,
            pill: l.langArabicRtlPill,
            pillColor: const Color(0xFF7C3AED),
            pillBg: const Color(0xFFF3EEFF),
            detail: l.langArabicDetail,
            voiceNote: l.langArabicVoice,
            voiceColor: const Color(0xFF7C3AED),
            checkColor: AppColors.mutedText,
            checkBg: AppColors.aquaTint,
          ),
          const SizedBox(height: 14),

          // Info banner
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.aquaTint,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.softBlue),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline_rounded,
                    size: 16, color: AppColors.primaryTeal),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    l.langInfoBanner,
                    style: AppStyles.jakartaMediumMuted12.copyWith(
                      letterSpacing: 0,
                      fontSize: 11,
                      color: AppColors.deepTeal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),

          // Apply button
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(_selected),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryPink,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_rounded, size: 18),
                  const SizedBox(width: 8),
                  Text(
                    l.langApply,
                    style: AppStyles.jakartaBoldSurface14.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Cancel text button
          Center(
            child: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                l.langCancel,
                style: AppStyles.jakartaMediumMuted12.copyWith(
                  letterSpacing: 0,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageCard({
    required bool isSelected,
    required VoidCallback onTap,
    required String name,
    required String tag,
    required String pill,
    required Color pillColor,
    required Color pillBg,
    required String detail,
    required String voiceNote,
    required Color voiceColor,
    Color checkColor = AppColors.primaryPink,
    Color? checkBg,
  }) {
    final borderColor =
        isSelected ? AppColors.primaryPink : const Color(0xFFE8E8E8);

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryPink.withOpacity(0.04)
              : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: borderColor, width: isSelected ? 1.5 : 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Radio dot
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? checkColor : (checkBg ?? Colors.white),
                    border: Border.all(
                      color: isSelected ? checkColor : const Color(0xFFD1D1D1),
                      width: isSelected ? 0 : 1.5,
                    ),
                  ),
                  child: isSelected
                      ? const Icon(Icons.check_rounded,
                          size: 14, color: Colors.white)
                      : null,
                ),
                const SizedBox(width: 10),
                Text(
                  name,
                  style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 6),
                _buildTag(tag),
                const Spacer(),
                _buildPill(pill, bgColor: pillBg, textColor: pillColor),
              ],
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail,
                    style: AppStyles.jakartaMediumMuted12.copyWith(
                      letterSpacing: 0,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.mic_outlined, size: 13, color: voiceColor),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          voiceNote,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: voiceColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: AppColors.mutedText,
        ),
      ),
    );
  }

  Widget _buildPill(String label, {required Color bgColor, required Color textColor}) {
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
