import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class SelectIndicator extends StatelessWidget {
  final bool selected;

  const SelectIndicator({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: selected ? AppColors.softPink : AppColors.tealBg,
        shape: BoxShape.circle,
      ),
      child: selected
          ? const Icon(Icons.check_rounded, size: 18, color: AppColors.surface)
          : null,
    );
  }
}
