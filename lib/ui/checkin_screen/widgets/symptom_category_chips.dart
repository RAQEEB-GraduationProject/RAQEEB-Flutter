import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../data/models/symptom.dart';

class SymptomCategoryChips extends StatelessWidget {
  final int totalCount;
  // null means "All".
  final SymptomCategory? selected;
  final ValueChanged<SymptomCategory?> onSelected;

  const SymptomCategoryChips({
    super.key,
    required this.totalCount,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _Chip(
            label: 'All ($totalCount)',
            selected: selected == null,
            onTap: () => onSelected(null),
          ),
          for (final category in SymptomCategory.values) ...[
            const SizedBox(width: 8),
            _Chip(
              label: category.label,
              selected: selected == category,
              onTap: () => onSelected(category),
            ),
          ],
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _Chip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.softPink : AppColors.surface,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: selected ? AppColors.softPink : AppColors.trackGrey,
            ),
          ),
          child: Text(
            label,
            style: AppStyles.jakartaBoldCharcoal14.copyWith(
              fontSize: 13,
              letterSpacing: 0,
              color: selected ? AppColors.surface : AppColors.charcoal,
            ),
          ),
        ),
      ),
    );
  }
}
