// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'رقيب';

  @override
  String comingSoon(String title) {
    return '$title – قريباً';
  }

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navStates => 'الحالات';

  @override
  String get navMeds => 'الأدوية';

  @override
  String get navMe => 'حسابي';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get loginWelcomeTitle => 'مرحباً بك في رقيب';

  @override
  String get loginWelcomeSubtitle => 'رعايتك، متصلة دائماً.';

  @override
  String get loginContinueAs => 'المتابعة كـ';

  @override
  String get rolePatient => 'مريض';

  @override
  String get roleCaregiver => 'مقدم رعاية';

  @override
  String get loginPatientIdLabel => 'معرّف المريض';

  @override
  String get loginCaregiverIdLabel => 'معرّف مقدم الرعاية';

  @override
  String get loginPatientIdHint => 'أدخل معرّف المريض';

  @override
  String get loginCaregiverIdHint => 'أدخل معرّف مقدم الرعاية';

  @override
  String get loginIdRequired => 'المعرّف مطلوب';

  @override
  String get loginPasswordLabel => 'كلمة المرور';

  @override
  String get loginPasswordHint => 'أدخل كلمة المرور';

  @override
  String get loginPasswordMinLength => 'يجب ألا تقل كلمة المرور عن 6 أحرف';

  @override
  String get loginRememberMe => 'تذكرني';

  @override
  String get loginForgotPassword => 'هل نسيت كلمة المرور؟';

  @override
  String get loginButton => 'تسجيل الدخول';

  @override
  String homeHelloGreeting(String name) {
    return 'مرحباً، $name';
  }

  @override
  String get homePatientName => 'فاطمة';

  @override
  String get homeSubtitle =>
      'الدورة 3 • اليوم 5 من العلاج الكيماوي (بروتوكول AC)';

  @override
  String get dailyWordTitle => 'رسالة الرعاية اليومية';

  @override
  String dailyWordDay(int day) {
    return 'اليوم $day';
  }

  @override
  String get dailyWordQuote =>
      'خذ الأمور خطوة بخطوة. أنت تبذل قصارى جهدك، وكل خطوة صغيرة لها قيمة. كن لطيفاً مع نفسك اليوم.';

  @override
  String get dailyWordTip =>
      'اشرب الماء بانتظام وبكميات قليلة طوال هذا الصباح.';

  @override
  String get dailyWordGentleTip => 'نصيحة لطيفة: ';

  @override
  String get eveningCheckinTitle => 'كيف كان شعورك اليوم؟';

  @override
  String get eveningCheckinSubtitle => 'أخبرنا كيف تشعر اليوم.';

  @override
  String get moodGreat => 'أنا بخير جداً';

  @override
  String get moodOkay => 'أنا بحال جيدة';

  @override
  String get moodNotGreat => 'لست بخير';

  @override
  String get checkinStatusCompleted => 'مكتمل';

  @override
  String checkinStatusNotCompleted(String dueTime) {
    return 'غير مكتمل • موعده $dueTime';
  }

  @override
  String get eveningCheckinCompletedButton => 'تم إكمال الفحص';

  @override
  String get eveningCheckinStartButton => 'بدء الفحص المسائي';

  @override
  String get careJourneyTitle => 'رحلة الرعاية لليوم';

  @override
  String careJourneyProgress(int completed, int total, int percent) {
    return '$completed من $total ($percent%)';
  }

  @override
  String get journeyCheckinDone => 'الفحص: مكتمل';

  @override
  String get journeyCheckinPending => 'الفحص: قيد الانتظار';

  @override
  String journeyMedsTaken(int taken, int total) {
    return 'الأدوية: تم أخذ $taken/$total';
  }

  @override
  String get journeyHydrationOnTrack => 'الترطيب: على المسار الصحيح';

  @override
  String get medTamoxifenName => 'تاموكسيفين';

  @override
  String get medTamoxifenDose => '20 ملغ';

  @override
  String get medEveningPeriod => 'المساء';

  @override
  String get medTamoxifenDue => 'الموعد 8:00 م • خلال ساعتين';

  @override
  String get medNextDose => 'الجرعة القادمة: بروتوكول AC اليوم 6';

  @override
  String get medSubtitleTaken => 'تم تسجيل أخذ الجرعة • أحسنت!';

  @override
  String get medSubtitleSkipped => 'تم التخطي مؤقتاً';

  @override
  String get medButtonTakenDone => 'تم الأخذ ✓';

  @override
  String get medButtonTaken => 'أخذت الجرعة';

  @override
  String get medButtonSkippedDone => 'تم التخطي';

  @override
  String get medButtonSkip => 'تخطي';

  @override
  String get medViewSchedule => 'عرض الجدول والأدوية ←';

  @override
  String get scheduleHydrationTitle => 'هدف الترطيب (500 مل)';

  @override
  String get scheduleStatusScheduled => 'مجدول';

  @override
  String get scheduleRestTitle => 'استراحة من التعب (30 د)';

  @override
  String get scheduleStatusUpcoming => 'قادم';

  @override
  String get careTeamSectionTitle => 'فريق الرعاية المناوب';

  @override
  String get careTeamClinicDirectory => 'دليل العيادة';

  @override
  String get careTeamDoctorName => 'د. خالد ع.';

  @override
  String get careTeamDoctorRole => 'طبيب';

  @override
  String get careTeamNurseName => 'سارة ن.';

  @override
  String get careTeamNurseRole => 'ممرضة';

  @override
  String get sosAlertButton => 'طوارئ – تنبيه فريق الرعاية';

  @override
  String get checkinHeaderTitle => 'فحص الأعراض';

  @override
  String checkinStepProgress(int step, int totalSteps, String title) {
    return 'الخطوة $step من $totalSteps • $title';
  }

  @override
  String checkinPercentDone(int percent) {
    return 'تم $percent%';
  }

  @override
  String get checkinFeelingTitle => 'كيف تشعر الآن؟';

  @override
  String get checkinFeelingSubtitle => 'اختر أي أعراض لاحظتها منذ آخر جرعة.';

  @override
  String get feelFineTitle => 'أشعر أنني بخير';

  @override
  String get feelFineSubtitle => 'لا توجد أعراض جانبية أو انزعاج للإبلاغ عنه';

  @override
  String get symptomSearchHint => 'ابحث عن عرض...';

  @override
  String symptomCategoryAll(int count) {
    return 'الكل ($count)';
  }

  @override
  String get symptomCategoryDigestive => 'الجهاز الهضمي';

  @override
  String get symptomCategoryGeneral => 'عامة';

  @override
  String get symptomCategoryPainNeuro => 'الألم والأعصاب';

  @override
  String get symptomNoSymptomsFound => 'لم يتم العثور على أعراض';

  @override
  String get symptomSeverityFollow => 'ستحدد شدة العرض تالياً ←';

  @override
  String get checkinSummaryNoSymptoms => 'لا توجد أعراض للإبلاغ عنها';

  @override
  String get checkinSummaryNoneSelected => 'لم يتم تحديد أي أعراض';

  @override
  String checkinSummarySelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم تحديد $count عرض',
      many: 'تم تحديد $count عرضاً',
      few: 'تم تحديد $count أعراض',
      two: 'تم تحديد عرضين',
      one: 'تم تحديد عرض واحد',
    );
    return '$_temp0';
  }

  @override
  String get checkinContinueButton => 'المتابعة إلى شدة العرض (الخطوة 2)';

  @override
  String get checkinBackHomeButton => 'الرجوع للرئيسية';

  @override
  String get symptomNauseaName => 'غثيان';

  @override
  String get symptomNauseaDesc => 'الشعور باضطراب في المعدة';

  @override
  String get symptomFatigueName => 'إرهاق';

  @override
  String get symptomFatigueDesc => 'تعب وإجهاد غير معتاد';

  @override
  String get symptomVomitingName => 'قيء';

  @override
  String get symptomVomitingDesc => 'استفراغ أو قيء';

  @override
  String get symptomShortnessBreathName => 'ضيق في التنفس';

  @override
  String get symptomShortnessBreathDesc => 'صعوبة في التقاط الأنفاس';

  @override
  String get symptomNumbnessName => 'تنميل وخدر';

  @override
  String get symptomNumbnessDesc => 'وخز وتنميل في أصابع اليدين أو القدمين';

  @override
  String get symptomFeverName => 'حمى وقشعريرة';

  @override
  String get symptomFeverDesc => 'ارتفاع في الحرارة أو شعور بالبرد';

  @override
  String get symptomDiarrheaName => 'إسهال';

  @override
  String get symptomDiarrheaDesc => 'براز رخو أو مائي';

  @override
  String get symptomHeadacheName => 'صداع';

  @override
  String get symptomHeadacheDesc => 'ألم أو ضغط في الرأس';

  @override
  String get notificationsTitle => 'الإشعارات';

  @override
  String get notificationsMarkAllRead => 'تعيين الكل كمقروء';

  @override
  String get notificationsFilterAll => 'الكل';

  @override
  String get notifCategoryMedications => 'الأدوية';

  @override
  String get notifCategoryCheckIns => 'الفحوصات';

  @override
  String get notifCategoryRiskReports => 'تقارير المخاطر';

  @override
  String get notificationsEmpty => 'لا توجد إشعارات';

  @override
  String get notificationMarkRead => 'تعيين كمقروء';

  @override
  String get notificationRemove => 'حذف';

  @override
  String notificationOpensScreen(String screen) {
    return 'يفتح $screen';
  }

  @override
  String get alertGuaranteeTitle => 'ضمان تنبيه المريض';

  @override
  String get alertGuaranteeBody =>
      'تصل التنبيهات السريرية العاجلة كإشعارات فورية عالية الأولوية ورسائل نصية للطوارئ حتى إذا كان وضع عدم الإزعاج مفعّلاً.';

  @override
  String get notifTagActionRequired => 'إجراء مطلوب';

  @override
  String get notifMeta1 => 'منذ 10 دقائق • خطة رعاية الأورام';

  @override
  String get notifTitle1 => 'موعد دواء: أوندانسيترون 8 ملغ';

  @override
  String get notifBody1 =>
      'حان الآن موعد جرعة الساعة 2:00 م. يرجى التأكيد بعد أخذ الجرعة للسيطرة على الغثيان الناتج عن العلاج الكيماوي.';

  @override
  String get notifAction1 => 'تأكيد الجرعة';

  @override
  String get notifTagClinicalAssessment => 'تقييم سريري';

  @override
  String get notifMeta2 =>
      'منذ ساعتين • الفرز بالذكاء الاصطناعي والفريق السريري';

  @override
  String get notifTitle2 => 'تم تقييم الفحص الصباحي';

  @override
  String get notifBody2 =>
      'تم تقييم تقريرك الصباحي (غثيان متوسط • تنبيه أصفر). تم تحديث الإرشادات السريرية ومراجعة التمريض، مع التوصية ببروتوكول الترطيب.';

  @override
  String get notifAction2 => 'عرض التقييم السريري';

  @override
  String get notifTagUrgentEvent => 'حدث طارئ';

  @override
  String get notifMeta3 => 'أمس • 10:42 م';

  @override
  String get notifTitle3 => 'تم إرسال نداء طوارئ SOS';

  @override
  String get notifBody3 =>
      'تم تسجيل تنبيه الطوارئ وإرساله إلى د. خالد، والممرضة المناوبة، ومقدمة الرعاية فاطمة. تم إنهاء الإجراء بنجاح.';

  @override
  String get notifAction3 => 'عرض تفاصيل الطوارئ';

  @override
  String get notifTagArchivedRoutine => 'إجراء روتيني مؤرشف';

  @override
  String get notifMeta4 => '28 سبتمبر • 8:05 ص';

  @override
  String get notifTitle4 => 'الفحص الصباحي اليومي';

  @override
  String get notifBody4 =>
      'تم تسجيل فحصك المجدول في الساعة 8:00 ص. تم حفظ العلامات الحيوية والأعراض في سجلك الصحي.';

  @override
  String get notifAction4 => 'عرض الفحص';

  @override
  String get profileCarePlatform => 'منصة الرعاية';

  @override
  String get profileBadgeText =>
      'معرّف مريض معتمد #RQ-882109 • تسجيل سريري نشط';

  @override
  String get profileActiveProtocolTitle => 'بروتوكول الأورام النشط';

  @override
  String get profileActiveStatus => 'نشط';

  @override
  String get profileChemoProtocolLabel => 'بروتوكول العلاج الكيماوي';

  @override
  String get profileCycleTimelineLabel => 'الجدول الزمني للدورة';

  @override
  String get profileMonitoringStatusLabel => 'حالة المراقبة';

  @override
  String get profileClinicalRegimenLabel => 'النظام السريري';

  @override
  String get profileProtocol => 'بروتوكول AC للعلاج الكيماوي';

  @override
  String get profileCycleTimeline => 'الدورة 3 • اليوم 5 من 21';

  @override
  String get profileMonitoringStatus =>
      'مرحلة مراقبة مكثفة (فترة الانخفاض الحرج)';

  @override
  String get profileRegimen =>
      'دوكسوروبيسين + سيكلوفوسفاميد (تسريب وريدي كل 21 يوماً)';

  @override
  String get profileClinicalDossierTitle => 'الملف السريري';

  @override
  String get profileReadOnly => 'للقراءة فقط';

  @override
  String get profileFullLegalName => 'الاسم القانوني الكامل';

  @override
  String get profileAge => 'العمر';

  @override
  String get profileAgeValue => '58 عاماً';

  @override
  String get profileMrn => 'رقم السجل الطبي (MRN)';

  @override
  String get profileMrnValue => 'KFSH-904218-ONC';

  @override
  String get profileAssignedOncologist => 'طبيب الأورام المعالج';

  @override
  String get profileOncologistValue => 'د. خالد المنصور (استشاري)';

  @override
  String get profileCareCoordinator => 'منسق الرعاية';

  @override
  String get profileCoordinatorValue => 'الممرضة سارة ن. (تمريض أورام)';

  @override
  String get profileDossierFooterNote =>
      'تتم إدارة المعلومات الشخصية والطبية حصرياً بواسطة فريق رعاية الأورام بالمستشفى. تواصل مع منسق العيادة لأي تحديثات إدارية.';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsCareJourneyStatus => 'رحلة الرعاية نشطة • بهيا';

  @override
  String get settingsSynced => 'متزامن';

  @override
  String get settingsPatientName => 'فاطمة العتيبي';

  @override
  String get settingsPatientId => 'RQ-992014';

  @override
  String get settingsPatientLabel => 'مريض';

  @override
  String get settingsClinicName => 'مريض أورام KFSH&RC';

  @override
  String get settingsAssignedCareTeam => 'فريق الرعاية المعيَّن';

  @override
  String get settingsCareTeamDoctor => 'د. عمر الخطيب';

  @override
  String get settingsCareTeamCaregiver => 'طارق منصور (مقدم الرعاية)';

  @override
  String get settingsSecurityNote =>
      'تُدار بيانات الاعتماد والمعرفات الطبية بأمان من قِبل عيادة الأورام للحفاظ على سجلات العلاج.';

  @override
  String get settingsPreferences => 'التفضيلات';

  @override
  String get settingsAppLanguage => 'لغة التطبيق';

  @override
  String get settingsAppLanguageSubtitle => 'يدعم العربية والإنجليزية';

  @override
  String get settingsAppLanguageCurrent => 'العربية';

  @override
  String get settingsCheckinAlerts => 'تنبيهات الفحص والأدوية';

  @override
  String get settingsCheckinAlertsSubtitle =>
      'تذكير يومي في 09:00 صباحاً و08:00 مساءً';

  @override
  String get settingsHighContrast => 'تباين عالٍ ونص كبير';

  @override
  String get settingsHighContrastSubtitle => 'قراءة محسّنة لتخفيف التعب';

  @override
  String get settingsSupportInfo => 'الدعم والمعلومات';

  @override
  String get settingsHelpGuide => 'المساعدة ودليل رعاية الأورام';

  @override
  String get settingsHelpGuideSubtitle =>
      'الأسئلة الشائعة وخطوات الفرز وخط مساعدة العيادة';

  @override
  String get settingsPrivacy => 'الخصوصية وأمان البيانات الطبية';

  @override
  String get settingsPrivacySubtitle => 'متوافق مع HIPAA ووزارة الصحة';

  @override
  String get settingsAbout => 'عن RAQEEB';

  @override
  String get settingsAboutSubtitle => 'v2.4.1 • بهيا';

  @override
  String get settingsLogOut => 'تسجيل الخروج';

  @override
  String get settingsLogOutFootnote =>
      'يتطلب تسجيل الخروج معرف المريض لإعادة تسجيل الدخول.';

  @override
  String get langSheetTitle => 'Select Language / اختر اللغة';

  @override
  String get langSheetSubtitle => 'اختر لغتك المفضلة للواجهة والإرشاد الصوتي.';

  @override
  String get langEnglishName => 'English';

  @override
  String get langEnglishTag => 'US';

  @override
  String get langEnglishActivePill => 'نشط';

  @override
  String get langEnglishDetail =>
      'تخطيط من اليسار إلى اليمين (LTR) • المصطلحات السريرية القياسية';

  @override
  String get langEnglishVoice => 'المساعد الصوتي بالإنجليزية مفعّل';

  @override
  String get langArabicName => 'العربية';

  @override
  String get langArabicTag => 'عربي';

  @override
  String get langArabicRtlPill => 'متوفر بالكامل (Full RTL)';

  @override
  String get langArabicDetail =>
      'تخطيط من اليمين إلى اليسار (RTL) • المصطلحات الطبية المعتمدة';

  @override
  String get langArabicVoice => 'المساعد الصوتي بالعربية الفصحى متوفر';

  @override
  String get langInfoBanner =>
      'يُكيِّف تبديل اللغة محاذاة النص والمساعدة الصوتية بالأعراض وإرشادات أسئلة CTCAE للأورام بسلاسة دون فقدان بيانات الفحص الجارية.';

  @override
  String get langApply => 'Apply Language • تطبيق';

  @override
  String get langCancel => 'Cancel • إلغاء';

  @override
  String get logoutTitle => 'تسجيل الخروج من RAQEEB؟';

  @override
  String get logoutBody => 'هل أنت متأكد من تسجيل الخروج؟ لن تتلقى بعد الآن ';

  @override
  String get logoutHighlight => 'تنبيهات الأدوية الفورية';

  @override
  String get logoutBodySuffix =>
      ' أو تنبيهات الأورام الحرجة حتى تسجّل الدخول مجدداً.';

  @override
  String get logoutPatientAccountPill => 'حساب المريض';

  @override
  String get logoutSyncNote =>
      'تبقى فحوصاتك المحفوظة وتاريخ العلامات الحيوية وسجلات الأعراض متزامنة بأمان مع KFSH&RC.';

  @override
  String get logoutConfirm => 'نعم، تسجيل الخروج';

  @override
  String get logoutCancel => 'إلغاء والبقاء مسجلاً';

  @override
  String get logoutUrgentLink => 'استفسارات طبية عاجلة؟ اتصل بـ MOH 937';

  @override
  String get sosConfirmationTitle => 'تأكيد طلب الطوارئ';

  @override
  String get sosConfirmationHeader => 'تأكيد نداء الطوارئ (SOS)';

  @override
  String get sosConfirmationQuestion =>
      'هل تحتاج إلى مساعدة طبية طارئة وعاجلة الآن؟';

  @override
  String get sosOfflineBanner =>
      'لا يوجد اتصال بالإنترنت - سيتم إرسال رسالة SMS لمقدم الرعاية';

  @override
  String get sosPressingSendWill => 'الضغط على إرسال الطوارئ سيقوم فوراً بـ:';

  @override
  String get sosStep1 => 'تسجيل نداء الطوارئ مع الوقت الحالي.';

  @override
  String get sosStep2Part1 => 'تنبيه طبيب الأورام المسؤول ';

  @override
  String get sosStep2Doctor => 'د. خالد';

  @override
  String get sosStep2Part2 => ' والممرضة المناوبة ';

  @override
  String get sosStep2Nurse => 'سارة ن.';

  @override
  String get sosStep3Part1 =>
      'إرسال رسالة SMS طارئة وتنبيه مباشر لمقدم الرعاية المسجل ';

  @override
  String get sosStep3Caregiver => 'فاطمة العتيبي.';

  @override
  String get sosSendEmergencyNow => 'إرسال نداء الطوارئ الآن';

  @override
  String get sosCancelImSafe => 'إلغاء — أنا بأمان';

  @override
  String get sosCallHospital => 'الاتصال بالمستشفى';

  @override
  String sosSentAt(String sentAt) {
    return 'أُرسل في $sentAt';
  }

  @override
  String get sosSentTitle => 'تم إرسال نداء الطوارئ';

  @override
  String get sosSentSubtitle =>
      'تم إخطار فريق الرعاية الخاص بك. ابقَ هادئاً وجالساً بينما يتم توجيه المساعدة إليك.';

  @override
  String get sosDispatchPriority => 'أولوية التوجيه: المستوى 1';

  @override
  String get sosDispatchActive => 'نشط';

  @override
  String get sosRapidResponseTitle => 'الاستجابة السريعة للأورام';

  @override
  String get sosRapidResponseSubtitle => 'تم توجيه الممرضة المناوبة سارة ن.';

  @override
  String get sosRapidResponseStatus => 'تم التأكيد • في الطريق (4–6 دقائق)';

  @override
  String get sosCaregiverAlertTitle => 'تم تنبيه مقدم الرعاية';

  @override
  String get sosCaregiverAlertSubtitle =>
      'تم إخطار عمر الفاسي مع موقعك المباشر';

  @override
  String get sosCaregiverAlertDelivery =>
      'تم التسليم عبر رسالة SMS ذات أولوية تلقائية';

  @override
  String get sosSharedLocationTitle => 'الموقع المشارك';

  @override
  String get sosSharedLocationSubtitle => 'المنزل • غرفة 204 (دقة 3 أمتار)';

  @override
  String get sosCaregiverName => 'عمر الفاسي';

  @override
  String get sosCaregiverStatus => 'جاري الاتصال بالهاتف في الخلفية';

  @override
  String get sosCallHospitalLineNow => 'اتصل بخط المستشفى الآن';

  @override
  String get sosBackToHome => 'الرجوع للرئيسية';
}
