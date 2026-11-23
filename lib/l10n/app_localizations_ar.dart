// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get login => 'تسجيل الدخول';

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
}
