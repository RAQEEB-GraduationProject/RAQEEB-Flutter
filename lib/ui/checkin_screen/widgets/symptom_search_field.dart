import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';

class SymptomSearchField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SymptomSearchField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: AppStyles.jakartaRegularCharcoal16.copyWith(fontSize: 14),
      decoration: InputDecoration(
        hintText: 'Search symptom...',
        hintStyle: AppStyles.jakartaRegularMuted16.copyWith(fontSize: 14),
        prefixIcon: const Icon(
          Icons.search_rounded,
          size: 22,
          color: AppColors.charcoal,
        ),
        filled: true,
        fillColor: AppColors.surface,
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: const BorderSide(color: AppColors.trackGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: const BorderSide(color: AppColors.softPink, width: 1.5),
        ),
      ),
    );
  }
}
