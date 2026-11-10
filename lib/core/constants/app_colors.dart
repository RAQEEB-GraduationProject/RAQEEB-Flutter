import 'package:flutter/material.dart';

abstract final class AppColors {
  // Brand Colors
  static const Color primaryPink = Color(0xFFE31565); // Main buttons - links - selected states
  static const Color deepPink = Color(0xFFB7004F); // End of primary gradient
  static const Color limeGreen = Color(0xFFC8F48D); // "Taken" button - positive actions
  static const Color powderPink = Color(0xFFFED8E4); // Soft cards - selected role bg
  static const Color softLavender = Color(0xFFDCCCF7); // SpO2 card - secondary cards
  static const Color charcoal = Color(0xFF333333); // Main text color
  static const Color deepInk = Color(0xFF040404); // Strongest text / dark surfaces
  static const Color surface = Color(0xFFFFFFFF); // Cards - text fields - etc..

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

  // Neutral (not in the design system, estimated from the screens)
  static const Color disabledGrey = Color(0xFFD1D1D1); // Disabled button bg
  static const Color mutedText = Color(0xFF8A6A74); // Hints - sub texts
  static const Color fieldBorder = Color(0xFFE6BFCB); // Text field border
  static const Color background = Color(0xFFFDF8F7); // Screen background

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryPink, deepPink],
  );
}
