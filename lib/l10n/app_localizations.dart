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

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'RAQEEB'**
  String get appName;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'{title} – coming soon'**
  String comingSoon(String title);

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navStates.
  ///
  /// In en, this message translates to:
  /// **'States'**
  String get navStates;

  /// No description provided for @navMeds.
  ///
  /// In en, this message translates to:
  /// **'Meds'**
  String get navMeds;

  /// No description provided for @navMe.
  ///
  /// In en, this message translates to:
  /// **'Me'**
  String get navMe;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'login'**
  String get login;

  /// No description provided for @loginWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to RAQEEB'**
  String get loginWelcomeTitle;

  /// No description provided for @loginWelcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your care, always connected.'**
  String get loginWelcomeSubtitle;

  /// No description provided for @loginContinueAs.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE AS'**
  String get loginContinueAs;

  /// No description provided for @rolePatient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get rolePatient;

  /// No description provided for @roleCaregiver.
  ///
  /// In en, this message translates to:
  /// **'Caregiver'**
  String get roleCaregiver;

  /// No description provided for @loginPatientIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Patient ID'**
  String get loginPatientIdLabel;

  /// No description provided for @loginCaregiverIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Caregiver ID'**
  String get loginCaregiverIdLabel;

  /// No description provided for @loginPatientIdHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your Patient ID'**
  String get loginPatientIdHint;

  /// No description provided for @loginCaregiverIdHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your Caregiver ID'**
  String get loginCaregiverIdHint;

  /// No description provided for @loginIdRequired.
  ///
  /// In en, this message translates to:
  /// **'ID is required'**
  String get loginIdRequired;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPasswordLabel;

  /// No description provided for @loginPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get loginPasswordHint;

  /// No description provided for @loginPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get loginPasswordMinLength;

  /// No description provided for @loginRememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get loginRememberMe;

  /// No description provided for @loginForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get loginForgotPassword;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'LOGIN'**
  String get loginButton;

  /// No description provided for @homeHelloGreeting.
  ///
  /// In en, this message translates to:
  /// **'Hello, {name}'**
  String homeHelloGreeting(String name);

  /// No description provided for @homePatientName.
  ///
  /// In en, this message translates to:
  /// **'Fatima'**
  String get homePatientName;

  /// No description provided for @homeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Cycle 3 • Day 5 of Chemotherapy (AC Protocol)'**
  String get homeSubtitle;

  /// No description provided for @dailyWordTitle.
  ///
  /// In en, this message translates to:
  /// **'DAILY WORD OF CARE'**
  String get dailyWordTitle;

  /// No description provided for @dailyWordDay.
  ///
  /// In en, this message translates to:
  /// **'Day {day}'**
  String dailyWordDay(int day);

  /// No description provided for @dailyWordQuote.
  ///
  /// In en, this message translates to:
  /// **'Take things one step at a time. You\'re doing your best, and every small step matters. Be kind to yourself today.'**
  String get dailyWordQuote;

  /// No description provided for @dailyWordTip.
  ///
  /// In en, this message translates to:
  /// **'Sip water steadily in small amounts through this morning.'**
  String get dailyWordTip;

  /// No description provided for @dailyWordGentleTip.
  ///
  /// In en, this message translates to:
  /// **'Gentle tip: '**
  String get dailyWordGentleTip;

  /// No description provided for @eveningCheckinTitle.
  ///
  /// In en, this message translates to:
  /// **'How did today feel?'**
  String get eveningCheckinTitle;

  /// No description provided for @eveningCheckinSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tell us how you feel today.'**
  String get eveningCheckinSubtitle;

  /// No description provided for @moodGreat.
  ///
  /// In en, this message translates to:
  /// **'I\'m Great'**
  String get moodGreat;

  /// No description provided for @moodOkay.
  ///
  /// In en, this message translates to:
  /// **'I\'m Okay'**
  String get moodOkay;

  /// No description provided for @moodNotGreat.
  ///
  /// In en, this message translates to:
  /// **'Not Great'**
  String get moodNotGreat;

  /// No description provided for @checkinStatusCompleted.
  ///
  /// In en, this message translates to:
  /// **'COMPLETED'**
  String get checkinStatusCompleted;

  /// No description provided for @checkinStatusNotCompleted.
  ///
  /// In en, this message translates to:
  /// **'NOT COMPLETED • DUE {dueTime}'**
  String checkinStatusNotCompleted(String dueTime);

  /// No description provided for @eveningCheckinCompletedButton.
  ///
  /// In en, this message translates to:
  /// **'Check-in Completed'**
  String get eveningCheckinCompletedButton;

  /// No description provided for @eveningCheckinStartButton.
  ///
  /// In en, this message translates to:
  /// **'Start Evening Check-in'**
  String get eveningCheckinStartButton;

  /// No description provided for @careJourneyTitle.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Care Journey'**
  String get careJourneyTitle;

  /// No description provided for @careJourneyProgress.
  ///
  /// In en, this message translates to:
  /// **'{completed} of {total} ({percent}%)'**
  String careJourneyProgress(int completed, int total, int percent);

  /// No description provided for @journeyCheckinDone.
  ///
  /// In en, this message translates to:
  /// **'Check-in: Done'**
  String get journeyCheckinDone;

  /// No description provided for @journeyCheckinPending.
  ///
  /// In en, this message translates to:
  /// **'Check-in: Pending'**
  String get journeyCheckinPending;

  /// No description provided for @journeyMedsTaken.
  ///
  /// In en, this message translates to:
  /// **'Meds: {taken}/{total} Taken'**
  String journeyMedsTaken(int taken, int total);

  /// No description provided for @journeyHydrationOnTrack.
  ///
  /// In en, this message translates to:
  /// **'Hydration: On Track'**
  String get journeyHydrationOnTrack;

  /// No description provided for @medTamoxifenName.
  ///
  /// In en, this message translates to:
  /// **'Tamoxifen'**
  String get medTamoxifenName;

  /// No description provided for @medTamoxifenDose.
  ///
  /// In en, this message translates to:
  /// **'20 mg'**
  String get medTamoxifenDose;

  /// No description provided for @medEveningPeriod.
  ///
  /// In en, this message translates to:
  /// **'Evening'**
  String get medEveningPeriod;

  /// No description provided for @medTamoxifenDue.
  ///
  /// In en, this message translates to:
  /// **'Due at 8:00 PM • In 2 hours'**
  String get medTamoxifenDue;

  /// No description provided for @medNextDose.
  ///
  /// In en, this message translates to:
  /// **'Next dose: AC Protocol Day 6'**
  String get medNextDose;

  /// No description provided for @medSubtitleTaken.
  ///
  /// In en, this message translates to:
  /// **'Marked as taken • Well done!'**
  String get medSubtitleTaken;

  /// No description provided for @medSubtitleSkipped.
  ///
  /// In en, this message translates to:
  /// **'Skipped for now'**
  String get medSubtitleSkipped;

  /// No description provided for @medButtonTakenDone.
  ///
  /// In en, this message translates to:
  /// **'Taken ✓'**
  String get medButtonTakenDone;

  /// No description provided for @medButtonTaken.
  ///
  /// In en, this message translates to:
  /// **'Taken'**
  String get medButtonTaken;

  /// No description provided for @medButtonSkippedDone.
  ///
  /// In en, this message translates to:
  /// **'Skipped'**
  String get medButtonSkippedDone;

  /// No description provided for @medButtonSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get medButtonSkip;

  /// No description provided for @medViewSchedule.
  ///
  /// In en, this message translates to:
  /// **'View Schedule & Meds →'**
  String get medViewSchedule;

  /// No description provided for @scheduleHydrationTitle.
  ///
  /// In en, this message translates to:
  /// **'Hydration Target (500ml)'**
  String get scheduleHydrationTitle;

  /// No description provided for @scheduleStatusScheduled.
  ///
  /// In en, this message translates to:
  /// **'Scheduled'**
  String get scheduleStatusScheduled;

  /// No description provided for @scheduleRestTitle.
  ///
  /// In en, this message translates to:
  /// **'Rest & Fatigue Pause (30m)'**
  String get scheduleRestTitle;

  /// No description provided for @scheduleStatusUpcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get scheduleStatusUpcoming;

  /// No description provided for @careTeamSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Care Team On-Call'**
  String get careTeamSectionTitle;

  /// No description provided for @careTeamClinicDirectory.
  ///
  /// In en, this message translates to:
  /// **'Clinic Directory'**
  String get careTeamClinicDirectory;

  /// No description provided for @careTeamDoctorName.
  ///
  /// In en, this message translates to:
  /// **'Dr. Khalid A.'**
  String get careTeamDoctorName;

  /// No description provided for @careTeamDoctorRole.
  ///
  /// In en, this message translates to:
  /// **'Doctor'**
  String get careTeamDoctorRole;

  /// No description provided for @careTeamNurseName.
  ///
  /// In en, this message translates to:
  /// **'Sarah N.'**
  String get careTeamNurseName;

  /// No description provided for @careTeamNurseRole.
  ///
  /// In en, this message translates to:
  /// **'Nurse'**
  String get careTeamNurseRole;

  /// No description provided for @sosAlertButton.
  ///
  /// In en, this message translates to:
  /// **'SOS – ALERT MY CARE TEAM'**
  String get sosAlertButton;

  /// No description provided for @checkinHeaderTitle.
  ///
  /// In en, this message translates to:
  /// **'Symptom Check'**
  String get checkinHeaderTitle;

  /// No description provided for @checkinStepProgress.
  ///
  /// In en, this message translates to:
  /// **'Step {step} of {totalSteps} • {title}'**
  String checkinStepProgress(int step, int totalSteps, String title);

  /// No description provided for @checkinPercentDone.
  ///
  /// In en, this message translates to:
  /// **'{percent}% Done'**
  String checkinPercentDone(int percent);

  /// No description provided for @checkinFeelingTitle.
  ///
  /// In en, this message translates to:
  /// **'How are you feeling now?'**
  String get checkinFeelingTitle;

  /// No description provided for @checkinFeelingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap any symptoms noticed since your last dose.'**
  String get checkinFeelingSubtitle;

  /// No description provided for @feelFineTitle.
  ///
  /// In en, this message translates to:
  /// **'I feel fine'**
  String get feelFineTitle;

  /// No description provided for @feelFineSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No active discomfort or side effects to report'**
  String get feelFineSubtitle;

  /// No description provided for @symptomSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search symptom...'**
  String get symptomSearchHint;

  /// No description provided for @symptomCategoryAll.
  ///
  /// In en, this message translates to:
  /// **'All ({count})'**
  String symptomCategoryAll(int count);

  /// No description provided for @symptomCategoryDigestive.
  ///
  /// In en, this message translates to:
  /// **'Digestive'**
  String get symptomCategoryDigestive;

  /// No description provided for @symptomCategoryGeneral.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get symptomCategoryGeneral;

  /// No description provided for @symptomCategoryPainNeuro.
  ///
  /// In en, this message translates to:
  /// **'Pain & Neuro'**
  String get symptomCategoryPainNeuro;

  /// No description provided for @symptomNoSymptomsFound.
  ///
  /// In en, this message translates to:
  /// **'No symptoms found'**
  String get symptomNoSymptomsFound;

  /// No description provided for @symptomSeverityFollow.
  ///
  /// In en, this message translates to:
  /// **'Severity will follow →'**
  String get symptomSeverityFollow;

  /// No description provided for @checkinSummaryNoSymptoms.
  ///
  /// In en, this message translates to:
  /// **'No symptoms to report'**
  String get checkinSummaryNoSymptoms;

  /// No description provided for @checkinSummaryNoneSelected.
  ///
  /// In en, this message translates to:
  /// **'No symptoms selected'**
  String get checkinSummaryNoneSelected;

  /// No description provided for @checkinSummarySelected.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 symptom selected} other{{count} symptoms selected}}'**
  String checkinSummarySelected(int count);

  /// No description provided for @checkinContinueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue to Severity (Step 2)'**
  String get checkinContinueButton;

  /// No description provided for @checkinBackHomeButton.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get checkinBackHomeButton;

  /// No description provided for @symptomNauseaName.
  ///
  /// In en, this message translates to:
  /// **'Nausea'**
  String get symptomNauseaName;

  /// No description provided for @symptomNauseaDesc.
  ///
  /// In en, this message translates to:
  /// **'Feeling sick to your stomach'**
  String get symptomNauseaDesc;

  /// No description provided for @symptomFatigueName.
  ///
  /// In en, this message translates to:
  /// **'Fatigue'**
  String get symptomFatigueName;

  /// No description provided for @symptomFatigueDesc.
  ///
  /// In en, this message translates to:
  /// **'Unusual tiredness'**
  String get symptomFatigueDesc;

  /// No description provided for @symptomVomitingName.
  ///
  /// In en, this message translates to:
  /// **'Vomiting'**
  String get symptomVomitingName;

  /// No description provided for @symptomVomitingDesc.
  ///
  /// In en, this message translates to:
  /// **'Throwing up'**
  String get symptomVomitingDesc;

  /// No description provided for @symptomShortnessBreathName.
  ///
  /// In en, this message translates to:
  /// **'Shortness of Breath'**
  String get symptomShortnessBreathName;

  /// No description provided for @symptomShortnessBreathDesc.
  ///
  /// In en, this message translates to:
  /// **'Difficulty breathing'**
  String get symptomShortnessBreathDesc;

  /// No description provided for @symptomNumbnessName.
  ///
  /// In en, this message translates to:
  /// **'Numbness & Tingling'**
  String get symptomNumbnessName;

  /// No description provided for @symptomNumbnessDesc.
  ///
  /// In en, this message translates to:
  /// **'Pins and needles in fingers or toes'**
  String get symptomNumbnessDesc;

  /// No description provided for @symptomFeverName.
  ///
  /// In en, this message translates to:
  /// **'Fever & Shivers'**
  String get symptomFeverName;

  /// No description provided for @symptomFeverDesc.
  ///
  /// In en, this message translates to:
  /// **'Feeling hot or having chills'**
  String get symptomFeverDesc;

  /// No description provided for @symptomDiarrheaName.
  ///
  /// In en, this message translates to:
  /// **'Diarrhea'**
  String get symptomDiarrheaName;

  /// No description provided for @symptomDiarrheaDesc.
  ///
  /// In en, this message translates to:
  /// **'Loose or watery stools'**
  String get symptomDiarrheaDesc;

  /// No description provided for @symptomHeadacheName.
  ///
  /// In en, this message translates to:
  /// **'Headache'**
  String get symptomHeadacheName;

  /// No description provided for @symptomHeadacheDesc.
  ///
  /// In en, this message translates to:
  /// **'Pain or pressure in your head'**
  String get symptomHeadacheDesc;

  /// No description provided for @notificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsTitle;

  /// No description provided for @notificationsMarkAllRead.
  ///
  /// In en, this message translates to:
  /// **'Mark all read'**
  String get notificationsMarkAllRead;

  /// No description provided for @notificationsFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get notificationsFilterAll;

  /// No description provided for @notifCategoryMedications.
  ///
  /// In en, this message translates to:
  /// **'Medications'**
  String get notifCategoryMedications;

  /// No description provided for @notifCategoryCheckIns.
  ///
  /// In en, this message translates to:
  /// **'Check-ins'**
  String get notifCategoryCheckIns;

  /// No description provided for @notifCategoryRiskReports.
  ///
  /// In en, this message translates to:
  /// **'Risk Reports'**
  String get notifCategoryRiskReports;

  /// No description provided for @notificationsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get notificationsEmpty;

  /// No description provided for @notificationMarkRead.
  ///
  /// In en, this message translates to:
  /// **'Mark as read'**
  String get notificationMarkRead;

  /// No description provided for @notificationRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get notificationRemove;

  /// No description provided for @notificationOpensScreen.
  ///
  /// In en, this message translates to:
  /// **'Opens {screen}'**
  String notificationOpensScreen(String screen);

  /// No description provided for @alertGuaranteeTitle.
  ///
  /// In en, this message translates to:
  /// **'Patient Alert Guarantee'**
  String get alertGuaranteeTitle;

  /// No description provided for @alertGuaranteeBody.
  ///
  /// In en, this message translates to:
  /// **'Urgent clinical alerts deliver immediate high-priority push notifications and automated emergency SMS even if Do-Not-Disturb is active.'**
  String get alertGuaranteeBody;

  /// No description provided for @notifTagActionRequired.
  ///
  /// In en, this message translates to:
  /// **'ACTION REQUIRED'**
  String get notifTagActionRequired;

  /// No description provided for @notifMeta1.
  ///
  /// In en, this message translates to:
  /// **'10m ago • Oncology Care Plan'**
  String get notifMeta1;

  /// No description provided for @notifTitle1.
  ///
  /// In en, this message translates to:
  /// **'Medication Due: Ondansetron 8mg'**
  String get notifTitle1;

  /// No description provided for @notifBody1.
  ///
  /// In en, this message translates to:
  /// **'Scheduled dose for 2:00 PM is due now. Please confirm once taken to maintain symptom management and counter chemotherapy-induced nausea.'**
  String get notifBody1;

  /// No description provided for @notifAction1.
  ///
  /// In en, this message translates to:
  /// **'Confirm Dose'**
  String get notifAction1;

  /// No description provided for @notifTagClinicalAssessment.
  ///
  /// In en, this message translates to:
  /// **'CLINICAL ASSESSMENT'**
  String get notifTagClinicalAssessment;

  /// No description provided for @notifMeta2.
  ///
  /// In en, this message translates to:
  /// **'2h ago • AI Triage & Clinical Team'**
  String get notifMeta2;

  /// No description provided for @notifTitle2.
  ///
  /// In en, this message translates to:
  /// **'Morning Check-in Evaluated'**
  String get notifTitle2;

  /// No description provided for @notifBody2.
  ///
  /// In en, this message translates to:
  /// **'Your morning report was evaluated (Moderate Nausea • Yellow Alert). Clinical guidance and nurse review window updated. Hydration protocol recommended.'**
  String get notifBody2;

  /// No description provided for @notifAction2.
  ///
  /// In en, this message translates to:
  /// **'View Clinical Assessment'**
  String get notifAction2;

  /// No description provided for @notifTagUrgentEvent.
  ///
  /// In en, this message translates to:
  /// **'URGENT EVENT'**
  String get notifTagUrgentEvent;

  /// No description provided for @notifMeta3.
  ///
  /// In en, this message translates to:
  /// **'Yesterday • 10:42 PM'**
  String get notifMeta3;

  /// No description provided for @notifTitle3.
  ///
  /// In en, this message translates to:
  /// **'Emergency SOS Sent'**
  String get notifTitle3;

  /// No description provided for @notifBody3.
  ///
  /// In en, this message translates to:
  /// **'Emergency alert was recorded and sent to Dr. Khalid, on-call oncology nurse, and primary caregiver Fatima. Protocol resolved successfully.'**
  String get notifBody3;

  /// No description provided for @notifAction3.
  ///
  /// In en, this message translates to:
  /// **'View SOS Details'**
  String get notifAction3;

  /// No description provided for @notifTagArchivedRoutine.
  ///
  /// In en, this message translates to:
  /// **'ARCHIVED ROUTINE'**
  String get notifTagArchivedRoutine;

  /// No description provided for @notifMeta4.
  ///
  /// In en, this message translates to:
  /// **'Sep 28 • 8:05 AM'**
  String get notifMeta4;

  /// No description provided for @notifTitle4.
  ///
  /// In en, this message translates to:
  /// **'Daily Morning Check-in'**
  String get notifTitle4;

  /// No description provided for @notifBody4.
  ///
  /// In en, this message translates to:
  /// **'Your scheduled 8:00 AM check-in was logged. Vitals and symptoms archived in your health history.'**
  String get notifBody4;

  /// No description provided for @notifAction4.
  ///
  /// In en, this message translates to:
  /// **'View Check-in'**
  String get notifAction4;

  /// No description provided for @profileCarePlatform.
  ///
  /// In en, this message translates to:
  /// **'Care Platform'**
  String get profileCarePlatform;

  /// No description provided for @profileBadgeText.
  ///
  /// In en, this message translates to:
  /// **'Verified Patient ID #RQ-882109 • Active Clinical Enrollment'**
  String get profileBadgeText;

  /// No description provided for @profileActiveProtocolTitle.
  ///
  /// In en, this message translates to:
  /// **'Active Oncology Protocol'**
  String get profileActiveProtocolTitle;

  /// No description provided for @profileActiveStatus.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get profileActiveStatus;

  /// No description provided for @profileChemoProtocolLabel.
  ///
  /// In en, this message translates to:
  /// **'Chemotherapy Protocol'**
  String get profileChemoProtocolLabel;

  /// No description provided for @profileCycleTimelineLabel.
  ///
  /// In en, this message translates to:
  /// **'Cycle Timeline'**
  String get profileCycleTimelineLabel;

  /// No description provided for @profileMonitoringStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Monitoring Status'**
  String get profileMonitoringStatusLabel;

  /// No description provided for @profileClinicalRegimenLabel.
  ///
  /// In en, this message translates to:
  /// **'Clinical Regimen'**
  String get profileClinicalRegimenLabel;

  /// No description provided for @profileProtocol.
  ///
  /// In en, this message translates to:
  /// **'AC Chemotherapy Protocol'**
  String get profileProtocol;

  /// No description provided for @profileCycleTimeline.
  ///
  /// In en, this message translates to:
  /// **'Cycle 3 • Day 5 of 21'**
  String get profileCycleTimeline;

  /// No description provided for @profileMonitoringStatus.
  ///
  /// In en, this message translates to:
  /// **'High Monitoring Phase (Nadir Window)'**
  String get profileMonitoringStatus;

  /// No description provided for @profileRegimen.
  ///
  /// In en, this message translates to:
  /// **'Doxorubicin + Cyclophosphamide (IV infusion every 21 days)'**
  String get profileRegimen;

  /// No description provided for @profileClinicalDossierTitle.
  ///
  /// In en, this message translates to:
  /// **'Clinical Dossier'**
  String get profileClinicalDossierTitle;

  /// No description provided for @profileReadOnly.
  ///
  /// In en, this message translates to:
  /// **'Read-Only'**
  String get profileReadOnly;

  /// No description provided for @profileFullLegalName.
  ///
  /// In en, this message translates to:
  /// **'Full Legal Name'**
  String get profileFullLegalName;

  /// No description provided for @profileAge.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get profileAge;

  /// No description provided for @profileAgeValue.
  ///
  /// In en, this message translates to:
  /// **'58 Years Old'**
  String get profileAgeValue;

  /// No description provided for @profileMrn.
  ///
  /// In en, this message translates to:
  /// **'Medical Record No. (MRN)'**
  String get profileMrn;

  /// No description provided for @profileMrnValue.
  ///
  /// In en, this message translates to:
  /// **'KFSH-904218-ONC'**
  String get profileMrnValue;

  /// No description provided for @profileAssignedOncologist.
  ///
  /// In en, this message translates to:
  /// **'Assigned Oncologist'**
  String get profileAssignedOncologist;

  /// No description provided for @profileOncologistValue.
  ///
  /// In en, this message translates to:
  /// **'Dr. Khalid Al-Mansoor (Consultant)'**
  String get profileOncologistValue;

  /// No description provided for @profileCareCoordinator.
  ///
  /// In en, this message translates to:
  /// **'Care Coordinator'**
  String get profileCareCoordinator;

  /// No description provided for @profileCoordinatorValue.
  ///
  /// In en, this message translates to:
  /// **'SN Sarah N. (Oncology Nurse)'**
  String get profileCoordinatorValue;

  /// No description provided for @profileDossierFooterNote.
  ///
  /// In en, this message translates to:
  /// **'Personal and medical information is managed exclusively by your oncology hospital care team. Contact your clinic coordinator for administrative updates.'**
  String get profileDossierFooterNote;

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

  /// No description provided for @sosConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'SOS Confirmation'**
  String get sosConfirmationTitle;

  /// No description provided for @sosConfirmationHeader.
  ///
  /// In en, this message translates to:
  /// **'Emergency SOS Confirmation'**
  String get sosConfirmationHeader;

  /// No description provided for @sosConfirmationQuestion.
  ///
  /// In en, this message translates to:
  /// **'Do you need urgent clinical emergency\nassistance right now?'**
  String get sosConfirmationQuestion;

  /// No description provided for @sosOfflineBanner.
  ///
  /// In en, this message translates to:
  /// **'No internet - an SMS will be sent to your caregiver'**
  String get sosOfflineBanner;

  /// No description provided for @sosPressingSendWill.
  ///
  /// In en, this message translates to:
  /// **'Pressing SEND SOS will instantly:'**
  String get sosPressingSendWill;

  /// No description provided for @sosStep1.
  ///
  /// In en, this message translates to:
  /// **'Log your SOS with the current time.'**
  String get sosStep1;

  /// No description provided for @sosStep2Part1.
  ///
  /// In en, this message translates to:
  /// **'Alert your primary oncologist '**
  String get sosStep2Part1;

  /// No description provided for @sosStep2Doctor.
  ///
  /// In en, this message translates to:
  /// **'Dr. Khalid'**
  String get sosStep2Doctor;

  /// No description provided for @sosStep2Part2.
  ///
  /// In en, this message translates to:
  /// **' and on-call nurse '**
  String get sosStep2Part2;

  /// No description provided for @sosStep2Nurse.
  ///
  /// In en, this message translates to:
  /// **'Sarah N.'**
  String get sosStep2Nurse;

  /// No description provided for @sosStep3Part1.
  ///
  /// In en, this message translates to:
  /// **'Send an emergency SMS & push dispatch to registered caregiver '**
  String get sosStep3Part1;

  /// No description provided for @sosStep3Caregiver.
  ///
  /// In en, this message translates to:
  /// **'Fatima Al-Otaibi.'**
  String get sosStep3Caregiver;

  /// No description provided for @sosSendEmergencyNow.
  ///
  /// In en, this message translates to:
  /// **'SEND EMERGENCY SOS NOW'**
  String get sosSendEmergencyNow;

  /// No description provided for @sosCancelImSafe.
  ///
  /// In en, this message translates to:
  /// **'Cancel — I\'m Safe'**
  String get sosCancelImSafe;

  /// No description provided for @sosCallHospital.
  ///
  /// In en, this message translates to:
  /// **'Call Hospital'**
  String get sosCallHospital;

  /// No description provided for @sosSentAt.
  ///
  /// In en, this message translates to:
  /// **'Sent at {sentAt}'**
  String sosSentAt(String sentAt);

  /// No description provided for @sosSentTitle.
  ///
  /// In en, this message translates to:
  /// **'SOS Sent'**
  String get sosSentTitle;

  /// No description provided for @sosSentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your care team has been notified. Stay calm and\nseated while help is routed.'**
  String get sosSentSubtitle;

  /// No description provided for @sosDispatchPriority.
  ///
  /// In en, this message translates to:
  /// **'Dispatch Priority: Level 1'**
  String get sosDispatchPriority;

  /// No description provided for @sosDispatchActive.
  ///
  /// In en, this message translates to:
  /// **'ACTIVE'**
  String get sosDispatchActive;

  /// No description provided for @sosRapidResponseTitle.
  ///
  /// In en, this message translates to:
  /// **'Oncology Rapid Response'**
  String get sosRapidResponseTitle;

  /// No description provided for @sosRapidResponseSubtitle.
  ///
  /// In en, this message translates to:
  /// **'On-call Nurse Sarah N. dispatched'**
  String get sosRapidResponseSubtitle;

  /// No description provided for @sosRapidResponseStatus.
  ///
  /// In en, this message translates to:
  /// **'Acknowledged • In Transit (4–6 min)'**
  String get sosRapidResponseStatus;

  /// No description provided for @sosCaregiverAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Caregiver Alert Sent'**
  String get sosCaregiverAlertTitle;

  /// No description provided for @sosCaregiverAlertSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Omar Al-Fassi notified with live GPS pin'**
  String get sosCaregiverAlertSubtitle;

  /// No description provided for @sosCaregiverAlertDelivery.
  ///
  /// In en, this message translates to:
  /// **'Delivered via automated priority SMS'**
  String get sosCaregiverAlertDelivery;

  /// No description provided for @sosSharedLocationTitle.
  ///
  /// In en, this message translates to:
  /// **'Shared Location'**
  String get sosSharedLocationTitle;

  /// No description provided for @sosSharedLocationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Home • Room 204 (Accurate to 3m)'**
  String get sosSharedLocationSubtitle;

  /// No description provided for @sosCaregiverName.
  ///
  /// In en, this message translates to:
  /// **'Omar Al-Fassi'**
  String get sosCaregiverName;

  /// No description provided for @sosCaregiverStatus.
  ///
  /// In en, this message translates to:
  /// **'Phone ringing in background'**
  String get sosCaregiverStatus;

  /// No description provided for @sosCallHospitalLineNow.
  ///
  /// In en, this message translates to:
  /// **'Call Hospital Line Now'**
  String get sosCallHospitalLineNow;

  /// No description provided for @sosBackToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get sosBackToHome;
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
