import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'login'**
  String get login;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsCareJourneyStatus.
  ///
  /// In en, this message translates to:
  /// **'Care Journey active • Bahya'**
  String get settingsCareJourneyStatus;

  /// No description provided for @settingsSynced.
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get settingsSynced;

  /// No description provided for @settingsPatientName.
  ///
  /// In en, this message translates to:
  /// **'Fatima Al-Otaibi'**
  String get settingsPatientName;

  /// No description provided for @settingsPatientId.
  ///
  /// In en, this message translates to:
  /// **'RQ-992014'**
  String get settingsPatientId;

  /// No description provided for @settingsPatientLabel.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get settingsPatientLabel;

  /// No description provided for @settingsClinicName.
  ///
  /// In en, this message translates to:
  /// **'KFSH&RC Oncology Patient'**
  String get settingsClinicName;

  /// No description provided for @settingsAssignedCareTeam.
  ///
  /// In en, this message translates to:
  /// **'ASSIGNED CARE TEAM'**
  String get settingsAssignedCareTeam;

  /// No description provided for @settingsCareTeamDoctor.
  ///
  /// In en, this message translates to:
  /// **'Dr. Omar Al-Khatib'**
  String get settingsCareTeamDoctor;

  /// No description provided for @settingsCareTeamCaregiver.
  ///
  /// In en, this message translates to:
  /// **'Tariq Mansoor (Caregiver)'**
  String get settingsCareTeamCaregiver;

  /// No description provided for @settingsSecurityNote.
  ///
  /// In en, this message translates to:
  /// **'Account credentials and medical IDs are managed securely by your oncology clinic to safeguard treatment records.'**
  String get settingsSecurityNote;

  /// No description provided for @settingsPreferences.
  ///
  /// In en, this message translates to:
  /// **'PREFERENCES'**
  String get settingsPreferences;

  /// No description provided for @settingsAppLanguage.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get settingsAppLanguage;

  /// No description provided for @settingsAppLanguageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Supports English and Arabic (العربية)'**
  String get settingsAppLanguageSubtitle;

  /// No description provided for @settingsAppLanguageCurrent.
  ///
  /// In en, this message translates to:
  /// **'English (US)'**
  String get settingsAppLanguageCurrent;

  /// No description provided for @settingsCheckinAlerts.
  ///
  /// In en, this message translates to:
  /// **'Check-in & Medication Alerts'**
  String get settingsCheckinAlerts;

  /// No description provided for @settingsCheckinAlertsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Daily reminder at 09:00 AM & 08:00 PM'**
  String get settingsCheckinAlertsSubtitle;

  /// No description provided for @settingsHighContrast.
  ///
  /// In en, this message translates to:
  /// **'High-Contrast & Large Text'**
  String get settingsHighContrast;

  /// No description provided for @settingsHighContrastSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Optimized readability for fatigue relief'**
  String get settingsHighContrastSubtitle;

  /// No description provided for @settingsSupportInfo.
  ///
  /// In en, this message translates to:
  /// **'SUPPORT & INFO'**
  String get settingsSupportInfo;

  /// No description provided for @settingsHelpGuide.
  ///
  /// In en, this message translates to:
  /// **'Help & Oncology Care Guide'**
  String get settingsHelpGuide;

  /// No description provided for @settingsHelpGuideSubtitle.
  ///
  /// In en, this message translates to:
  /// **'FAQs, triage steps & clinic helpline'**
  String get settingsHelpGuideSubtitle;

  /// No description provided for @settingsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Medical Data Security'**
  String get settingsPrivacy;

  /// No description provided for @settingsPrivacySubtitle.
  ///
  /// In en, this message translates to:
  /// **'HIPAA & MoH Compliant'**
  String get settingsPrivacySubtitle;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About RAQEEB'**
  String get settingsAbout;

  /// No description provided for @settingsAboutSubtitle.
  ///
  /// In en, this message translates to:
  /// **'v2.4.1 • Bahya'**
  String get settingsAboutSubtitle;

  /// No description provided for @settingsLogOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get settingsLogOut;

  /// No description provided for @settingsLogOutFootnote.
  ///
  /// In en, this message translates to:
  /// **'Logging out requires your Patient ID to sign back in.'**
  String get settingsLogOutFootnote;

  /// No description provided for @langSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Language / اختر اللغة'**
  String get langSheetTitle;

  /// No description provided for @langSheetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language for the interface and audio guidance.'**
  String get langSheetSubtitle;

  /// No description provided for @langEnglishName.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get langEnglishName;

  /// No description provided for @langEnglishTag.
  ///
  /// In en, this message translates to:
  /// **'US'**
  String get langEnglishTag;

  /// No description provided for @langEnglishActivePill.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get langEnglishActivePill;

  /// No description provided for @langEnglishDetail.
  ///
  /// In en, this message translates to:
  /// **'Left-to-right (LTR) layout • Standard clinical terminology'**
  String get langEnglishDetail;

  /// No description provided for @langEnglishVoice.
  ///
  /// In en, this message translates to:
  /// **'English Voice Assistant Enabled'**
  String get langEnglishVoice;

  /// No description provided for @langArabicName.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get langArabicName;

  /// No description provided for @langArabicTag.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get langArabicTag;

  /// No description provided for @langArabicRtlPill.
  ///
  /// In en, this message translates to:
  /// **'متوفر بالكامل (Full RTL)'**
  String get langArabicRtlPill;

  /// No description provided for @langArabicDetail.
  ///
  /// In en, this message translates to:
  /// **'تخطيط من اليمين إلى اليسار (RTL) • المصطلحات الطبية المعتمدة'**
  String get langArabicDetail;

  /// No description provided for @langArabicVoice.
  ///
  /// In en, this message translates to:
  /// **'المساعد الصوتي بالعربية الفصحى متوفر'**
  String get langArabicVoice;

  /// No description provided for @langInfoBanner.
  ///
  /// In en, this message translates to:
  /// **'Switching language adapts text alignment, symptom voice assistance, and oncology CTCAE question guidelines seamlessly without losing ongoing check-in data.'**
  String get langInfoBanner;

  /// No description provided for @langApply.
  ///
  /// In en, this message translates to:
  /// **'Apply Language • تطبيق'**
  String get langApply;

  /// No description provided for @langCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel • إلغاء'**
  String get langCancel;

  /// No description provided for @logoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Log Out of RAQEEB?'**
  String get logoutTitle;

  /// No description provided for @logoutBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out? You will no longer receive '**
  String get logoutBody;

  /// No description provided for @logoutHighlight.
  ///
  /// In en, this message translates to:
  /// **'real-time medication alarms'**
  String get logoutHighlight;

  /// No description provided for @logoutBodySuffix.
  ///
  /// In en, this message translates to:
  /// **' or critical oncology alerts until you sign back in.'**
  String get logoutBodySuffix;

  /// No description provided for @logoutPatientAccountPill.
  ///
  /// In en, this message translates to:
  /// **'Patient Account'**
  String get logoutPatientAccountPill;

  /// No description provided for @logoutSyncNote.
  ///
  /// In en, this message translates to:
  /// **'Your saved check-ins, vitals history, and symptom logs remain safely synchronized with KFSH&RC.'**
  String get logoutSyncNote;

  /// No description provided for @logoutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Yes, Log Out'**
  String get logoutConfirm;

  /// No description provided for @logoutCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel & Stay Logged In'**
  String get logoutCancel;

  /// No description provided for @logoutUrgentLink.
  ///
  /// In en, this message translates to:
  /// **'Urgent Medical Questions? Call MOH 937'**
  String get logoutUrgentLink;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
