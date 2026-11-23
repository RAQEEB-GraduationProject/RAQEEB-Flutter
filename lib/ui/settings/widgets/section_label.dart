import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raqeeb/core/theme/app_colors.dart';

class SectionLabel extends StatelessWidget {
  final String text;

  const SectionLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.8,
        color: AppColors.mutedText,
      ),
    );
  }
}
