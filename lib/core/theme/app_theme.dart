import 'package:flutter/material.dart';
import 'package:raqeeb/core/theme/app_colors.dart';
import 'package:raqeeb/core/theme/app_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryPink,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.deepInk,
      titleTextStyle: AppStyles.jakartaSemiBoldCharcoal20,
    ),
      scaffoldBackgroundColor: Colors.white
  );

  static ThemeData darkTheme = ThemeData();
}
