import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

// Font: Plus Jakarta Sans (RAQEEB Design System v1.0)
abstract final class AppStyles {
  // Display Bold 32
  static final TextStyle jakartaBoldCharcoal32 = GoogleFonts.plusJakartaSans(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.8,
    color: AppColors.charcoal,
  );

  // Headline SemiBold 20
  static final TextStyle jakartaSemiBoldCharcoal20 = GoogleFonts.plusJakartaSans(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
    color: AppColors.charcoal,
  );

  static final TextStyle jakartaSemiBoldPrimaryPink20 = GoogleFonts.plusJakartaSans(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
    color: AppColors.primaryPink,
  );

  // Body Regular 16
  static final TextStyle jakartaRegularCharcoal16 = GoogleFonts.plusJakartaSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.charcoal,
  );

  static final TextStyle jakartaRegularMuted16 = GoogleFonts.plusJakartaSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.mutedText,
  );

  // Caption Medium 12
  static final TextStyle jakartaMediumCharcoal12 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.charcoal,
  );

  static final TextStyle jakartaMediumMuted12 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.8,
    color: AppColors.mutedText,
  );

  static final TextStyle jakartaMediumPrimaryPink12 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryPink,
  );

  // Button Bold 14
  static final TextStyle jakartaBoldSurface14 = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    color: AppColors.surface,
  );

  static final TextStyle jakartaBoldCharcoal14 = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    color: AppColors.charcoal,
  );

  static final TextStyle jakartaBoldPrimaryPink14 = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    color: AppColors.primaryPink,
  );

  static final TextStyle jakartaBoldDisabled14 = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    color: AppColors.mutedText,
  );

  // Risk status labels
  static final TextStyle jakartaBoldStableGreen12 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.4,
    color: AppColors.stableGreen,
  );

  static final TextStyle jakartaBoldAttentionYellow12 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.4,
    color: AppColors.attentionYellow,
  );

  static final TextStyle jakartaBoldHighRiskOrange12 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.4,
    color: AppColors.highRiskOrange,
  );

  static final TextStyle jakartaBoldCriticalRed12 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.4,
    color: AppColors.criticalRed,
  );

  // Icons
  static const IconThemeData iconCharcoal20 = IconThemeData(size: 20, color: AppColors.charcoal);
  static const IconThemeData iconCharcoal24 = IconThemeData(size: 24, color: AppColors.charcoal);
  static const IconThemeData iconMuted20 = IconThemeData(size: 20, color: AppColors.mutedText);
  static const IconThemeData iconMuted22 = IconThemeData(size: 22, color: AppColors.mutedText);
  static const IconThemeData iconPrimaryPink20 = IconThemeData(size: 20, color: AppColors.primaryPink);
  static const IconThemeData iconPrimaryPink24 = IconThemeData(size: 24, color: AppColors.primaryPink);
  static const IconThemeData iconSurface20 = IconThemeData(size: 20, color: AppColors.surface);
  static const IconThemeData iconSurface24 = IconThemeData(size: 24, color: AppColors.surface);
  static const IconThemeData iconStableGreen20 = IconThemeData(size: 20, color: AppColors.stableGreen);
  static const IconThemeData iconAttentionYellow20 = IconThemeData(size: 20, color: AppColors.attentionYellow);
  static const IconThemeData iconHighRiskOrange20 = IconThemeData(size: 20, color: AppColors.highRiskOrange);
  static const IconThemeData iconCriticalRed20 = IconThemeData(size: 20, color: AppColors.criticalRed);
}
