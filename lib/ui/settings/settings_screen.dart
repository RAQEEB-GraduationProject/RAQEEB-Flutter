import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';

import 'package:raqeeb/ui/settings/widgets/preferences_card.dart';
import 'package:raqeeb/ui/settings/widgets/profile_card.dart';
import 'package:raqeeb/ui/settings/widgets/section_label.dart';
import 'package:raqeeb/ui/settings/widgets/settings_app_bar.dart';
import 'package:raqeeb/ui/settings/widgets/settings_logout_button.dart';
import 'package:raqeeb/ui/settings/widgets/status_pill.dart';
import 'package:raqeeb/ui/settings/widgets/support_card.dart';

class SettingsScreen extends StatefulWidget {
  static const String route = '/settings';

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _alertsEnabled = true;
  bool _highContrastEnabled = false;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: Column(
          children: [
            const SettingsAppBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const StatusPill(),
                    const SizedBox(height: 12),
                    const ProfileCard(),
                    const SizedBox(height: 20),
                    SectionLabel(text: l.settingsPreferences),
                    const SizedBox(height: 8),
                    PreferencesCard(
                      alertsEnabled: _alertsEnabled,
                      onAlertsChanged: (v) => setState(() => _alertsEnabled = v),
                      highContrastEnabled: _highContrastEnabled,
                      onHighContrastChanged: (v) => setState(() => _highContrastEnabled = v),
                    ),
                    const SizedBox(height: 20),
                    SectionLabel(text: l.settingsSupportInfo),
                    const SizedBox(height: 8),
                    const SupportCard(),
                    const SizedBox(height: 20),
                    const SettingsLogoutButton(),
                    const SizedBox(height: 8),
                    Center(
                      child: Text(
                        l.settingsLogOutFootnote,
                        style: AppStyles.jakartaMediumMuted12.copyWith(
                          letterSpacing: 0,
                          fontSize: 11,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: SettingsScreen(),
      ),
    ),
  );
}
