import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../data/models/app_notification.dart';

class NotificationFilterChips extends StatelessWidget {
  final List<AppNotification> items;
  // null means "All".
  final NotificationCategory? selected;
  final ValueChanged<NotificationCategory?> onSelected;

  const NotificationFilterChips({
    super.key,
    required this.items,
    required this.selected,
    required this.onSelected,
  });

  int _count(NotificationCategory c) =>
      items.where((n) => n.category == c).length;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _Chip(
            label: 'All',
            count: items.length,
            selected: selected == null,
            onTap: () => onSelected(null),
          ),
          for (final c in NotificationCategory.values) ...[
            const SizedBox(width: 8),
            _Chip(
              label: c.label,
              count: _count(c),
              selected: selected == c,
              onTap: () => onSelected(c),
            ),
          ],
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final int count;
  final bool selected;
  final VoidCallback onTap;

  const _Chip({
    required this.label,
    required this.count,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color fg = selected ? AppColors.surface : AppColors.charcoal;
    return Material(
      color: selected ? AppColors.softPink : const Color(0xFFD6E6EA),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 12.5,
                  letterSpacing: 0,
                  color: fg,
                ),
              ),
              const SizedBox(width: 6),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                decoration: BoxDecoration(
                  color: selected
                      ? AppColors.surface.withValues(alpha: 0.25)
                      : AppColors.surface.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '$count',
                  style: AppStyles.jakartaBoldCharcoal14.copyWith(
                    fontSize: 10.5,
                    letterSpacing: 0,
                    color: fg,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
