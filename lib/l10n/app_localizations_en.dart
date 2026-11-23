// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'RAQEEB';

  @override
  String comingSoon(String title) {
    return '$title – coming soon';
  }

  @override
  String get navHome => 'Home';

  @override
  String get navStates => 'States';

  @override
  String get navMeds => 'Meds';

  @override
  String get navMe => 'Me';

  @override
  String get login => 'login';

  @override
  String get loginWelcomeTitle => 'Welcome to RAQEEB';

  @override
  String get loginWelcomeSubtitle => 'Your care, always connected.';

  @override
  String get loginContinueAs => 'CONTINUE AS';

  @override
  String get rolePatient => 'Patient';

  @override
  String get roleCaregiver => 'Caregiver';

  @override
  String get loginPatientIdLabel => 'Patient ID';

  @override
  String get loginCaregiverIdLabel => 'Caregiver ID';

  @override
  String get loginPatientIdHint => 'Enter your Patient ID';

  @override
  String get loginCaregiverIdHint => 'Enter your Caregiver ID';

  @override
  String get loginIdRequired => 'ID is required';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginPasswordHint => 'Enter your password';

  @override
  String get loginPasswordMinLength => 'Password must be at least 6 characters';

  @override
  String get loginRememberMe => 'Remember me';

  @override
  String get loginForgotPassword => 'Forgot Password?';

  @override
  String get loginButton => 'LOGIN';

  @override
  String homeHelloGreeting(String name) {
    return 'Hello, $name';
  }

  @override
  String get homePatientName => 'Fatima';

  @override
  String get homeSubtitle => 'Cycle 3 • Day 5 of Chemotherapy (AC Protocol)';

  @override
  String get dailyWordTitle => 'DAILY WORD OF CARE';

  @override
  String dailyWordDay(int day) {
    return 'Day $day';
  }

  @override
  String get dailyWordQuote =>
      'Take things one step at a time. You\'re doing your best, and every small step matters. Be kind to yourself today.';

  @override
  String get dailyWordTip =>
      'Sip water steadily in small amounts through this morning.';

  @override
  String get dailyWordGentleTip => 'Gentle tip: ';

  @override
  String get eveningCheckinTitle => 'How did today feel?';

  @override
  String get eveningCheckinSubtitle => 'Tell us how you feel today.';

  @override
  String get moodGreat => 'I\'m Great';

  @override
  String get moodOkay => 'I\'m Okay';

  @override
  String get moodNotGreat => 'Not Great';

  @override
  String get checkinStatusCompleted => 'COMPLETED';

  @override
  String checkinStatusNotCompleted(String dueTime) {
    return 'NOT COMPLETED • DUE $dueTime';
  }

  @override
  String get eveningCheckinCompletedButton => 'Check-in Completed';

  @override
  String get eveningCheckinStartButton => 'Start Evening Check-in';

  @override
  String get careJourneyTitle => 'Today\'s Care Journey';

  @override
  String careJourneyProgress(int completed, int total, int percent) {
    return '$completed of $total ($percent%)';
  }

  @override
  String get journeyCheckinDone => 'Check-in: Done';

  @override
  String get journeyCheckinPending => 'Check-in: Pending';

  @override
  String journeyMedsTaken(int taken, int total) {
    return 'Meds: $taken/$total Taken';
  }

  @override
  String get journeyHydrationOnTrack => 'Hydration: On Track';

  @override
  String get medTamoxifenName => 'Tamoxifen';

  @override
  String get medTamoxifenDose => '20 mg';

  @override
  String get medEveningPeriod => 'Evening';

  @override
  String get medTamoxifenDue => 'Due at 8:00 PM • In 2 hours';

  @override
  String get medNextDose => 'Next dose: AC Protocol Day 6';

  @override
  String get medSubtitleTaken => 'Marked as taken • Well done!';

  @override
  String get medSubtitleSkipped => 'Skipped for now';

  @override
  String get medButtonTakenDone => 'Taken ✓';

  @override
  String get medButtonTaken => 'Taken';

  @override
  String get medButtonSkippedDone => 'Skipped';

  @override
  String get medButtonSkip => 'Skip';

  @override
  String get medViewSchedule => 'View Schedule & Meds →';

  @override
  String get scheduleHydrationTitle => 'Hydration Target (500ml)';

  @override
  String get scheduleStatusScheduled => 'Scheduled';

  @override
  String get scheduleRestTitle => 'Rest & Fatigue Pause (30m)';

  @override
  String get scheduleStatusUpcoming => 'Upcoming';

  @override
  String get careTeamSectionTitle => 'Care Team On-Call';

  @override
  String get careTeamClinicDirectory => 'Clinic Directory';

  @override
  String get careTeamDoctorName => 'Dr. Khalid A.';

  @override
  String get careTeamDoctorRole => 'Doctor';

  @override
  String get careTeamNurseName => 'Sarah N.';

  @override
  String get careTeamNurseRole => 'Nurse';

  @override
  String get sosAlertButton => 'SOS – ALERT MY CARE TEAM';

  @override
  String get checkinHeaderTitle => 'Symptom Check';

  @override
  String checkinStepProgress(int step, int totalSteps, String title) {
    return 'Step $step of $totalSteps • $title';
  }

  @override
  String checkinPercentDone(int percent) {
    return '$percent% Done';
  }

  @override
  String get checkinFeelingTitle => 'How are you feeling now?';

  @override
  String get checkinFeelingSubtitle =>
      'Tap any symptoms noticed since your last dose.';

  @override
  String get feelFineTitle => 'I feel fine';

  @override
  String get feelFineSubtitle =>
      'No active discomfort or side effects to report';

  @override
  String get symptomSearchHint => 'Search symptom...';

  @override
  String symptomCategoryAll(int count) {
    return 'All ($count)';
  }

  @override
  String get symptomCategoryDigestive => 'Digestive';

  @override
  String get symptomCategoryGeneral => 'General';

  @override
  String get symptomCategoryPainNeuro => 'Pain & Neuro';

  @override
  String get symptomNoSymptomsFound => 'No symptoms found';

  @override
  String get symptomSeverityFollow => 'Severity will follow →';

  @override
  String get checkinSummaryNoSymptoms => 'No symptoms to report';

  @override
  String get checkinSummaryNoneSelected => 'No symptoms selected';

  @override
  String checkinSummarySelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count symptoms selected',
      one: '1 symptom selected',
    );
    return '$_temp0';
  }

  @override
  String get checkinContinueButton => 'Continue to Severity (Step 2)';

  @override
  String get checkinBackHomeButton => 'Back to Home';

  @override
  String get symptomNauseaName => 'Nausea';

  @override
  String get symptomNauseaDesc => 'Feeling sick to your stomach';

  @override
  String get symptomFatigueName => 'Fatigue';

  @override
  String get symptomFatigueDesc => 'Unusual tiredness';

  @override
  String get symptomVomitingName => 'Vomiting';

  @override
  String get symptomVomitingDesc => 'Throwing up';

  @override
  String get symptomShortnessBreathName => 'Shortness of Breath';

  @override
  String get symptomShortnessBreathDesc => 'Difficulty breathing';

  @override
  String get symptomNumbnessName => 'Numbness & Tingling';

  @override
  String get symptomNumbnessDesc => 'Pins and needles in fingers or toes';

  @override
  String get symptomFeverName => 'Fever & Shivers';

  @override
  String get symptomFeverDesc => 'Feeling hot or having chills';

  @override
  String get symptomDiarrheaName => 'Diarrhea';

  @override
  String get symptomDiarrheaDesc => 'Loose or watery stools';

  @override
  String get symptomHeadacheName => 'Headache';

  @override
  String get symptomHeadacheDesc => 'Pain or pressure in your head';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get notificationsMarkAllRead => 'Mark all read';

  @override
  String get notificationsFilterAll => 'All';

  @override
  String get notifCategoryMedications => 'Medications';

  @override
  String get notifCategoryCheckIns => 'Check-ins';

  @override
  String get notifCategoryRiskReports => 'Risk Reports';

  @override
  String get notificationsEmpty => 'No notifications';

  @override
  String get notificationMarkRead => 'Mark as read';

  @override
  String get notificationRemove => 'Remove';

  @override
  String notificationOpensScreen(String screen) {
    return 'Opens $screen';
  }

  @override
  String get alertGuaranteeTitle => 'Patient Alert Guarantee';

  @override
  String get alertGuaranteeBody =>
      'Urgent clinical alerts deliver immediate high-priority push notifications and automated emergency SMS even if Do-Not-Disturb is active.';

  @override
  String get notifTagActionRequired => 'ACTION REQUIRED';

  @override
  String get notifMeta1 => '10m ago • Oncology Care Plan';

  @override
  String get notifTitle1 => 'Medication Due: Ondansetron 8mg';

  @override
  String get notifBody1 =>
      'Scheduled dose for 2:00 PM is due now. Please confirm once taken to maintain symptom management and counter chemotherapy-induced nausea.';

  @override
  String get notifAction1 => 'Confirm Dose';

  @override
  String get notifTagClinicalAssessment => 'CLINICAL ASSESSMENT';

  @override
  String get notifMeta2 => '2h ago • AI Triage & Clinical Team';

  @override
  String get notifTitle2 => 'Morning Check-in Evaluated';

  @override
  String get notifBody2 =>
      'Your morning report was evaluated (Moderate Nausea • Yellow Alert). Clinical guidance and nurse review window updated. Hydration protocol recommended.';

  @override
  String get notifAction2 => 'View Clinical Assessment';

  @override
  String get notifTagUrgentEvent => 'URGENT EVENT';

  @override
  String get notifMeta3 => 'Yesterday • 10:42 PM';

  @override
  String get notifTitle3 => 'Emergency SOS Sent';

  @override
  String get notifBody3 =>
      'Emergency alert was recorded and sent to Dr. Khalid, on-call oncology nurse, and primary caregiver Fatima. Protocol resolved successfully.';

  @override
  String get notifAction3 => 'View SOS Details';

  @override
  String get notifTagArchivedRoutine => 'ARCHIVED ROUTINE';

  @override
  String get notifMeta4 => 'Sep 28 • 8:05 AM';

  @override
  String get notifTitle4 => 'Daily Morning Check-in';

  @override
  String get notifBody4 =>
      'Your scheduled 8:00 AM check-in was logged. Vitals and symptoms archived in your health history.';

  @override
  String get notifAction4 => 'View Check-in';

  @override
  String get profileCarePlatform => 'Care Platform';

  @override
  String get profileBadgeText =>
      'Verified Patient ID #RQ-882109 • Active Clinical Enrollment';

  @override
  String get profileActiveProtocolTitle => 'Active Oncology Protocol';

  @override
  String get profileActiveStatus => 'Active';

  @override
  String get profileChemoProtocolLabel => 'Chemotherapy Protocol';

  @override
  String get profileCycleTimelineLabel => 'Cycle Timeline';

  @override
  String get profileMonitoringStatusLabel => 'Monitoring Status';

  @override
  String get profileClinicalRegimenLabel => 'Clinical Regimen';

  @override
  String get profileProtocol => 'AC Chemotherapy Protocol';

  @override
  String get profileCycleTimeline => 'Cycle 3 • Day 5 of 21';

  @override
  String get profileMonitoringStatus => 'High Monitoring Phase (Nadir Window)';

  @override
  String get profileRegimen =>
      'Doxorubicin + Cyclophosphamide (IV infusion every 21 days)';

  @override
  String get profileClinicalDossierTitle => 'Clinical Dossier';

  @override
  String get profileReadOnly => 'Read-Only';

  @override
  String get profileFullLegalName => 'Full Legal Name';

  @override
  String get profileAge => 'Age';

  @override
  String get profileAgeValue => '58 Years Old';

  @override
  String get profileMrn => 'Medical Record No. (MRN)';

  @override
  String get profileMrnValue => 'KFSH-904218-ONC';

  @override
  String get profileAssignedOncologist => 'Assigned Oncologist';

  @override
  String get profileOncologistValue => 'Dr. Khalid Al-Mansoor (Consultant)';

  @override
  String get profileCareCoordinator => 'Care Coordinator';

  @override
  String get profileCoordinatorValue => 'SN Sarah N. (Oncology Nurse)';

  @override
  String get profileDossierFooterNote =>
      'Personal and medical information is managed exclusively by your oncology hospital care team. Contact your clinic coordinator for administrative updates.';

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

  @override
  String get sosConfirmationTitle => 'SOS Confirmation';

  @override
  String get sosConfirmationHeader => 'Emergency SOS Confirmation';

  @override
  String get sosConfirmationQuestion =>
      'Do you need urgent clinical emergency\nassistance right now?';

  @override
  String get sosOfflineBanner =>
      'No internet - an SMS will be sent to your caregiver';

  @override
  String get sosPressingSendWill => 'Pressing SEND SOS will instantly:';

  @override
  String get sosStep1 => 'Log your SOS with the current time.';

  @override
  String get sosStep2Part1 => 'Alert your primary oncologist ';

  @override
  String get sosStep2Doctor => 'Dr. Khalid';

  @override
  String get sosStep2Part2 => ' and on-call nurse ';

  @override
  String get sosStep2Nurse => 'Sarah N.';

  @override
  String get sosStep3Part1 =>
      'Send an emergency SMS & push dispatch to registered caregiver ';

  @override
  String get sosStep3Caregiver => 'Fatima Al-Otaibi.';

  @override
  String get sosSendEmergencyNow => 'SEND EMERGENCY SOS NOW';

  @override
  String get sosCancelImSafe => 'Cancel — I\'m Safe';

  @override
  String get sosCallHospital => 'Call Hospital';

  @override
  String sosSentAt(String sentAt) {
    return 'Sent at $sentAt';
  }

  @override
  String get sosSentTitle => 'SOS Sent';

  @override
  String get sosSentSubtitle =>
      'Your care team has been notified. Stay calm and\nseated while help is routed.';

  @override
  String get sosDispatchPriority => 'Dispatch Priority: Level 1';

  @override
  String get sosDispatchActive => 'ACTIVE';

  @override
  String get sosRapidResponseTitle => 'Oncology Rapid Response';

  @override
  String get sosRapidResponseSubtitle => 'On-call Nurse Sarah N. dispatched';

  @override
  String get sosRapidResponseStatus => 'Acknowledged • In Transit (4–6 min)';

  @override
  String get sosCaregiverAlertTitle => 'Caregiver Alert Sent';

  @override
  String get sosCaregiverAlertSubtitle =>
      'Omar Al-Fassi notified with live GPS pin';

  @override
  String get sosCaregiverAlertDelivery =>
      'Delivered via automated priority SMS';

  @override
  String get sosSharedLocationTitle => 'Shared Location';

  @override
  String get sosSharedLocationSubtitle => 'Home • Room 204 (Accurate to 3m)';

  @override
  String get sosCaregiverName => 'Omar Al-Fassi';

  @override
  String get sosCaregiverStatus => 'Phone ringing in background';

  @override
  String get sosCallHospitalLineNow => 'Call Hospital Line Now';

  @override
  String get sosBackToHome => 'Back to Home';
}
