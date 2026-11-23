import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';
import '../../l10n/app_localizations.dart';
import '../home_screen/home_screen.dart';
import '../home_screen/widgets/home_bottom_nav.dart';
import '../profile_screen/profile_screen.dart';

// Holds the bottom navigation bar once and swaps the page above it, so
// switching tabs never pushes a new route. IndexedStack keeps each tab's
// state (scroll position, selections) alive while it's hidden.
class MainShell extends StatefulWidget {
  static const String route = '/main_shell';

  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  static const int _homeTab = 0;
  static const int _profileTab = 3;

  int _index = _homeTab;

  void _selectTab(int index) {
    if (index == _index) return;
    setState(() => _index = index);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: _index,
                children: [
                  HomeScreen(onOpenProfileTab: () => _selectTab(_profileTab)),
                  _ComingSoonTab(title: l.navStates),
                  _ComingSoonTab(title: l.navMeds),
                  const ProfileScreen(),
                ],
              ),
            ),
            HomeBottomNav(currentIndex: _index, onTap: _selectTab),
          ],
        ),
      ),
    );
  }
}

// Placeholder for tabs that have no design yet.
class _ComingSoonTab extends StatelessWidget {
  final String title;

  const _ComingSoonTab({required this.title});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Center(
      child: Text(
        l.comingSoon(title),
        style: AppStyles.jakartaRegularMuted16,
      ),
    );
  }
}
