import 'package:flutter/material.dart';
import 'package:raqeeb/l10n/app_localizations.dart';
import 'package:raqeeb/ui/settings/settings_screen.dart';
import 'widgets/clinical_dossier_card.dart';
import 'widgets/oncology_protocol_card.dart';
import 'widgets/profile_header_bar.dart';
import 'widgets/profile_hero_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    final dossier = [
      DossierField(label: l.profileFullLegalName, value: l.settingsPatientName),
      DossierField(label: l.profileAge, value: l.profileAgeValue),
      DossierField(
        label: l.profileMrn,
        value: l.profileMrnValue,
        highlight: true,
      ),
      DossierField(
        label: l.profileAssignedOncologist,
        value: l.profileOncologistValue,
      ),
      DossierField(
        label: l.profileCareCoordinator,
        value: l.profileCoordinatorValue,
      ),
    ];

    // Shown as a tab inside MainShell, which provides the Scaffold, safe area
    // and bottom navigation bar.
    return Column(
      children: [
        ProfileHeaderBar(
          onSettingsTap: () {
            Navigator.pushNamed(context, SettingsScreen.route);
          },
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
            child: Column(
              children: [
                ProfileHeroCard(
                  name: l.settingsPatientName,
                  initials: 'FA',
                  badgeText: l.profileBadgeText,
                ),
                const SizedBox(height: 20),
                OncologyProtocolCard(
                  protocol: l.profileProtocol,
                  cycleTimeline: l.profileCycleTimeline,
                  monitoringStatus: l.profileMonitoringStatus,
                  regimen: l.profileRegimen,
                ),
                const SizedBox(height: 20),
                ClinicalDossierCard(
                  fields: dossier,
                  footerNote: l.profileDossierFooterNote,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
