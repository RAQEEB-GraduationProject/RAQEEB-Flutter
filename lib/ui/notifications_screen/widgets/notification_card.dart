import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../data/models/app_notification.dart';

enum NotificationMenuAction { markRead, remove }

class NotificationCard extends StatelessWidget {
  final AppNotification notification;
  final VoidCallback onTap;
  final VoidCallback onAction;
  final ValueChanged<NotificationMenuAction> onMenuSelected;

  const NotificationCard({
    super.key,
    required this.notification,
    required this.onTap,
    required this.onAction,
    required this.onMenuSelected,
  });

  _Look get _look => switch (notification.kind) {
        NotificationKind.actionRequired => const _Look(
            icon: Icons.medication_rounded,
            iconColor: AppColors.primaryPink,
            iconBg: AppColors.tealBg,
            tagBg: AppColors.tealBg,
            tagFg: AppColors.charcoal,
            actionIcon: Icons.arrow_forward_rounded,
            primaryAction: true,
          ),
        NotificationKind.clinicalAssessment => const _Look(
            icon: Icons.monitor_heart_outlined,
            iconColor: AppColors.charcoal,
            iconBg: AppColors.limeGreen,
            tagBg: AppColors.limeGreen,
            tagFg: AppColors.charcoal,
            actionIcon: Icons.open_in_new_rounded,
          ),
        NotificationKind.urgentEvent => const _Look(
            icon: Icons.emergency_rounded,
            iconColor: AppColors.criticalRed,
            iconBg: AppColors.criticalRedBg,
            tagBg: AppColors.criticalRedBg,
            tagFg: AppColors.criticalRed,
            actionIcon: Icons.chevron_right_rounded,
          ),
        NotificationKind.archivedRoutine => const _Look(
            icon: Icons.calendar_today_outlined,
            iconColor: AppColors.violetAccent,
            iconBg: AppColors.softLavender,
            tagBg: AppColors.softLavender,
            tagFg: AppColors.violetAccent,
            actionIcon: Icons.chevron_right_rounded,
          ),
      };

  @override
  Widget build(BuildContext context) {
    final look = _look;
    final unread = !notification.isRead;

    return Material(
      color: unread
          ? AppColors.surface
          : AppColors.tealBg.withValues(alpha: 0.55),
      borderRadius: BorderRadius.circular(24),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: unread
                ? [
                    BoxShadow(
                      color: AppColors.charcoal.withValues(alpha: 0.05),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: look.iconBg,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(look.icon, size: 21, color: look.iconColor),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: look.tagBg,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  notification.tag,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.jakartaBoldCharcoal14
                                      .copyWith(
                                    fontSize: 9.5,
                                    letterSpacing: 0.3,
                                    color: look.tagFg,
                                  ),
                                ),
                              ),
                            ),
                            if (unread) ...[
                              const SizedBox(width: 6),
                              Container(
                                width: 7,
                                height: 7,
                                decoration: const BoxDecoration(
                                  color: AppColors.softPink,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          notification.meta,
                          style: AppStyles.jakartaMediumMuted12.copyWith(
                            fontSize: 11.5,
                            letterSpacing: 0,
                            color: AppColors.charcoal.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuButton<NotificationMenuAction>(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.more_vert,
                      size: 18,
                      color: AppColors.charcoal.withValues(alpha: 0.7),
                    ),
                    onSelected: onMenuSelected,
                    itemBuilder: (_) => [
                      if (unread)
                        const PopupMenuItem(
                          value: NotificationMenuAction.markRead,
                          child: Text('Mark as read'),
                        ),
                      const PopupMenuItem(
                        value: NotificationMenuAction.remove,
                        child: Text('Remove'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                notification.title,
                style: AppStyles.jakartaBoldCharcoal14.copyWith(
                  fontSize: 17,
                  letterSpacing: -0.3,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                notification.body,
                style: AppStyles.jakartaRegularCharcoal16.copyWith(
                  fontSize: 13,
                  height: 1.5,
                  color: AppColors.charcoal.withValues(alpha: 0.85),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _ActionButton(
                    label: notification.actionLabel,
                    icon: look.actionIcon,
                    primary: look.primaryAction,
                    onTap: onAction,
                  ),
                  const Spacer(),
                  Text(
                    'Opens ${notification.opensScreen}',
                    style: AppStyles.jakartaMediumMuted12.copyWith(
                      fontSize: 10.5,
                      letterSpacing: 0,
                      color: AppColors.charcoal.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Look {
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final Color tagBg;
  final Color tagFg;
  final IconData actionIcon;
  final bool primaryAction;

  const _Look({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.tagBg,
    required this.tagFg,
    required this.actionIcon,
    this.primaryAction = false,
  });
}

class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool primary;
  final VoidCallback onTap;

  const _ActionButton({
    required this.label,
    required this.icon,
    required this.primary,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color fg = primary ? AppColors.surface : AppColors.charcoal;
    return Material(
      color: primary ? AppColors.softPink : const Color(0xFFD6E6EA),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
              Icon(icon, size: 15, color: fg),
            ],
          ),
        ),
      ),
    );
  }
}
