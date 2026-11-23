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

  // Home screen (estimated from the Patient Home design)
  static const Color softPink = Color(0xFFF2709C); // Check-in CTA - selected nav item
  static const Color darkCard = Color(0xFF1B1820); // Evening check-in card
  static const Color checkinYellow = Color(0xFFFFEE8F); // "Not completed" chip bg
  static const Color checkinOrange = Color(0xFFF59E0B); // "Not completed" dot
  static const Color tealAccent = Color(0xFF3A9AA0); // Section label - links
  static const Color tealBg = Color(0xFFE1F0F1); // Teal tinted bg
  static const Color skyBlue = Color(0xFF2563EB); // Hydration text / icon
  static const Color skyBlueBg = Color(0xFFE6EFFF); // Hydration chip bg
  static const Color violetAccent = Color(0xFF7C5CC4); // Nurse avatar / call icon
  static const Color trackGrey = Color(0xFFEAEAEA); // Progress bar track

  // Gradients
  static const LinearGradient dailyWordGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFDDEEF0), Color(0xFFE6DBF8)],
  );

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryPink, deepPink],
  );
}
