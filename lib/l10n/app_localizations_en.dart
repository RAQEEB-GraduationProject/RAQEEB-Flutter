// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get login => 'login';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsCareJourneyStatus => 'Care Journey active • Bahya';

  @override
  String get settingsSynced => 'Synced';

  @override
  String get settingsPatientName => 'Fatima Al-Otaibi';

  @override
  String get settingsPatientId => 'RQ-992014';

  @override
  String get settingsPatientLabel => 'Patient';

  @override
  String get settingsClinicName => 'KFSH&RC Oncology Patient';

  @override
  String get settingsAssignedCareTeam => 'ASSIGNED CARE TEAM';

  @override
  String get settingsCareTeamDoctor => 'Dr. Omar Al-Khatib';

  @override
  String get settingsCareTeamCaregiver => 'Tariq Mansoor (Caregiver)';

  @override
  String get settingsSecurityNote =>
      'Account credentials and medical IDs are managed securely by your oncology clinic to safeguard treatment records.';

  @override
  String get settingsPreferences => 'PREFERENCES';

  @override
  String get settingsAppLanguage => 'App Language';

  @override
  String get settingsAppLanguageSubtitle =>
      'Supports English and Arabic (العربية)';

  @override
  String get settingsAppLanguageCurrent => 'English (US)';

  @override
  String get settingsCheckinAlerts => 'Check-in & Medication Alerts';

  @override
  String get settingsCheckinAlertsSubtitle =>
      'Daily reminder at 09:00 AM & 08:00 PM';

  @override
  String get settingsHighContrast => 'High-Contrast & Large Text';

  @override
  String get settingsHighContrastSubtitle =>
      'Optimized readability for fatigue relief';

  @override
  String get settingsSupportInfo => 'SUPPORT & INFO';

  @override
  String get settingsHelpGuide => 'Help & Oncology Care Guide';

  @override
  String get settingsHelpGuideSubtitle =>
      'FAQs, triage steps & clinic helpline';

  @override
  String get settingsPrivacy => 'Privacy & Medical Data Security';

  @override
  String get settingsPrivacySubtitle => 'HIPAA & MoH Compliant';

  @override
  String get settingsAbout => 'About RAQEEB';

  @override
  String get settingsAboutSubtitle => 'v2.4.1 • Bahya';

  @override
  String get settingsLogOut => 'Log Out';

  @override
  String get settingsLogOutFootnote =>
      'Logging out requires your Patient ID to sign back in.';

  @override
  String get langSheetTitle => 'Select Language / اختر اللغة';

  @override
  String get langSheetSubtitle =>
      'Choose your preferred language for the interface and audio guidance.';

  @override
  String get langEnglishName => 'English';

  @override
  String get langEnglishTag => 'US';

  @override
  String get langEnglishActivePill => 'Active';

  @override
  String get langEnglishDetail =>
      'Left-to-right (LTR) layout • Standard clinical terminology';

  @override
  String get langEnglishVoice => 'English Voice Assistant Enabled';

  @override
  String get langArabicName => 'العربية';

  @override
  String get langArabicTag => 'Arabic';

  @override
  String get langArabicRtlPill => 'متوفر بالكامل (Full RTL)';

  @override
  String get langArabicDetail =>
      'تخطيط من اليمين إلى اليسار (RTL) • المصطلحات الطبية المعتمدة';

  @override
  String get langArabicVoice => 'المساعد الصوتي بالعربية الفصحى متوفر';

  @override
  String get langInfoBanner =>
      'Switching language adapts text alignment, symptom voice assistance, and oncology CTCAE question guidelines seamlessly without losing ongoing check-in data.';

  @override
  String get langApply => 'Apply Language • تطبيق';

  @override
  String get langCancel => 'Cancel • إلغاء';

  @override
  String get logoutTitle => 'Log Out of RAQEEB?';

  @override
  String get logoutBody =>
      'Are you sure you want to log out? You will no longer receive ';

  @override
  String get logoutHighlight => 'real-time medication alarms';

  @override
  String get logoutBodySuffix =>
      ' or critical oncology alerts until you sign back in.';

  @override
  String get logoutPatientAccountPill => 'Patient Account';

  @override
  String get logoutSyncNote =>
      'Your saved check-ins, vitals history, and symptom logs remain safely synchronized with KFSH&RC.';

  @override
  String get logoutConfirm => 'Yes, Log Out';

  @override
  String get logoutCancel => 'Cancel & Stay Logged In';

  @override
  String get logoutUrgentLink => 'Urgent Medical Questions? Call MOH 937';
}
