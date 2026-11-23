import 'package:flutter/material.dart';
import 'widgets/clinical_dossier_card.dart';
import 'widgets/oncology_protocol_card.dart';
import 'widgets/profile_header_bar.dart';
import 'widgets/profile_hero_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Placeholder data until a patient repository exists.
  static const List<DossierField> _dossier = [
    DossierField(label: 'Full Legal Name', value: 'Fatima Al-Otaibi'),
    DossierField(label: 'Age', value: '58 Years Old'),
    DossierField(
      label: 'Medical Record No. (MRN)',
      value: 'KFSH-904218-ONC',
      highlight: true,
    ),
    DossierField(
      label: 'Assigned Oncologist',
      value: 'Dr. Khalid Al-Mansoor (Consultant)',
    ),
    DossierField(
      label: 'Care Coordinator',
      value: 'SN Sarah N. (Oncology Nurse)',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Shown as a tab inside MainShell, which provides the Scaffold, safe area
    // and bottom navigation bar.
    return Column(
      children: [
        ProfileHeaderBar(
          onSettingsTap: () {
            // TODO: navigate to the Settings screen (no screen yet).
          },
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
            child: Column(
              children: const [
                ProfileHeroCard(
                  name: 'Fatima Al-Otaibi',
                  initials: 'FA',
                  badgeText:
                      'Verified Patient ID #RQ-882109 • Active Clinical Enrollment',
                ),
                SizedBox(height: 20),
                OncologyProtocolCard(
                  protocol: 'AC Chemotherapy Protocol',
                  cycleTimeline: 'Cycle 3 • Day 5 of 21',
                  monitoringStatus: 'High Monitoring Phase (Nadir Window)',
                  regimen:
                      'Doxorubicin + Cyclophosphamide (IV infusion every 21 days)',
                ),
                SizedBox(height: 20),
                ClinicalDossierCard(
                  fields: _dossier,
                  footerNote:
                      'Personal and medical information is managed exclusively by your oncology hospital care team. Contact your clinic coordinator for administrative updates.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
