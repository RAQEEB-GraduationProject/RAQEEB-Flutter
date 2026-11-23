import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';
import '../../data/models/app_notification.dart';
import 'widgets/alert_guarantee_card.dart';
import 'widgets/notification_card.dart';
import 'widgets/notification_filter_chips.dart';

// What the screen hands back to Home when it closes.
class NotificationsResult {
  final List<AppNotification> notifications;
  // True when the patient tapped the profile avatar: Home then switches to
  // the Profile tab.
  final bool openProfile;

  const NotificationsResult(this.notifications, {this.openProfile = false});
}

class NotificationsScreen extends StatefulWidget {
  // The current list (owned by Home). The updated list is returned on pop.
  final List<AppNotification> initialNotifications;

  const NotificationsScreen({super.key, required this.initialNotifications});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  late List<AppNotification> _items;
  NotificationCategory? _filter; // null = All

  @override
  void initState() {
    super.initState();
    _items = List.of(widget.initialNotifications);
  }

  int get _unreadCount => _items.where((n) => !n.isRead).length;

  List<AppNotification> get _visible => _filter == null
      ? _items
      : _items.where((n) => n.category == _filter).toList();

  void _markRead(String id) {
    setState(() {
      _items = [
        for (final n in _items) n.id == id ? n.copyWith(isRead: true) : n,
      ];
    });
  }

  void _markAllRead() {
    setState(() {
      _items = [for (final n in _items) n.copyWith(isRead: true)];
    });
  }

  void _remove(String id) {
    setState(() => _items = _items.where((n) => n.id != id).toList());
  }

  void _onAction(AppNotification n) {
    _markRead(n.id);
    // TODO: navigate to the screen named in `n.opensScreen`
    // (M-10 meds, M-08 assessment, M-12 SOS details, M-14 check-in).
  }

  void _openProfile() {
    Navigator.pop(context, NotificationsResult(_items, openProfile: true));
  }

  @override
  Widget build(BuildContext context) {
    final visible = _visible;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        // Hand the updated list back so Home can refresh the bell dot.
        Navigator.pop(context, NotificationsResult(_items));
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Column(
            children: [
              _TopBar(
                unreadCount: _unreadCount,
                onBack: () => Navigator.maybePop(context),
                onFilter: () {
                  // TODO: open notification filter / settings sheet.
                },
                onProfile: _openProfile,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 24),
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: _unreadCount == 0 ? null : _markAllRead,
                        child: Text(
                          'Mark all read',
                          style: AppStyles.jakartaMediumMuted12.copyWith(
                            letterSpacing: 0,
                            color: _unreadCount == 0
                                ? AppColors.disabledGrey
                                : AppColors.tealAccent,
                          ),
                        ),
                      ),
                    ),
                    NotificationFilterChips(
                      items: _items,
                      selected: _filter,
                      onSelected: (c) => setState(() => _filter = c),
                    ),
                    const SizedBox(height: 14),
                    if (visible.isEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Center(
                          child: Text(
                            'No notifications',
                            style: AppStyles.jakartaRegularMuted16,
                          ),
                        ),
                      )
                    else
                      for (final n in visible)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                          child: NotificationCard(
                            notification: n,
                            onTap: () => _markRead(n.id),
                            onAction: () => _onAction(n),
                            onMenuSelected: (action) {
                              switch (action) {
                                case NotificationMenuAction.markRead:
                                  _markRead(n.id);
                                case NotificationMenuAction.remove:
                                  _remove(n.id);
                              }
                            },
                          ),
                        ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                      child: AlertGuaranteeCard(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  final int unreadCount;
  final VoidCallback onBack;
  final VoidCallback onFilter;
  final VoidCallback onProfile;

  const _TopBar({
    required this.unreadCount,
    required this.onBack,
    required this.onFilter,
    required this.onProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 6, 12, 6),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(
            color: AppColors.charcoal.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.charcoal),
            onPressed: onBack,
          ),
          Text(
            'Notifications',
            style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
              fontSize: 17,
              letterSpacing: -0.2,
            ),
          ),
          if (unreadCount > 0) ...[
            const SizedBox(width: 6),
            Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColors.softPink,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$unreadCount',
                style: AppStyles.jakartaBoldSurface14.copyWith(
                  fontSize: 10.5,
                  letterSpacing: 0,
                ),
              ),
            ),
          ],
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.tune_rounded, color: AppColors.charcoal),
            onPressed: onFilter,
          ),
          const SizedBox(width: 4),
          InkWell(
            customBorder: const CircleBorder(),
            onTap: onProfile,
            child: Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                color: AppColors.primaryPink,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person_outline,
                size: 19,
                color: AppColors.surface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
