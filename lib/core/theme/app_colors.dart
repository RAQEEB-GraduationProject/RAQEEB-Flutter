import 'package:flutter/material.dart';

abstract final class AppColors {
  // Brand Colors (Bahiya Hospital palette)
  static const Color primaryPink = Color(0xFFF26C9C); // Main buttons - selected states - active tab
  static const Color deepPink = Color(0xFFD84B7F); // End of primary gradient
  static const Color primaryTeal = Color(0xFF409EAC); // Links - icons - info chips - brand accent
  static const Color deepTeal = Color(0xFF337E8A); // Text on light teal/aqua containers
  static const Color limeGreen = Color(0xFFC8F48D); // "Taken" button - positive actions
  static const Color powderPink = Color(0xFFFCD3E5); // Soft cards - selected role bg
  static const Color softLavender = Color(0xFFDCCCF7); // SpO2 card - secondary cards
  static const Color charcoal = Color(0xFF263B40); // Main text color
  static const Color deepInk = Color(0xFF263B40); // Strongest text / dark surfaces
  static const Color surface = Color(0xFFFFFFFF); // Cards - text fields - etc..

  // Aqua tints (backgrounds - cards - waves)
  static const Color lightAqua = Color(0xFFD2E5EA); // Soft cards - quiet backgrounds
  static const Color softBlue = Color(0xFFCAE1E7); // Gradients - decorations - borders
  static const Color waveTeal = Color(0xFFA9D0D8); // Waves - surface accents
  static const Color aquaTint = Color(0xFFEDF5F7); // Very light section backgrounds

  // Risk Status Colors
  static const Color stableGreen = Color(0xFF16A34A);
  static const Color attentionYellow = Color(0xFFCA8A04);
  static const Color highRiskOrange = Color(0xFFEA580C);
  static const Color criticalRed = Color(0xFFDC2626);

  // Risk Status Backgrounds (soft tints of the colors above)
  static const Color stableGreenBg = Color(0xFFDDF3E4);
  static const Color attentionYellowBg = Color(0xFFFBF1D0);
  static const Color highRiskOrangeBg = Color(0xFFFDE4D5);
  static const Color criticalRedBg = Color(0xFFFBDADA);

  // Neutral
  static const Color disabledGrey = Color(0xFFD1D1D1); // Disabled button bg
  static const Color mutedText = Color(0xFF71858A); // Hints - sub texts
  static const Color disabledText = Color(0xFFA9B8BB); // Disabled text
  static const Color fieldBorder = Color(0xFFCAE1E7); // Text field border
  static const Color background = Color(0xFFFFFFFF); // Screen background

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryPink, deepPink],
  );
}
