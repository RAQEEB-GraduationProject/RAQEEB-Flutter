import '../../l10n/app_localizations.dart';

enum NotificationCategory { medications, checkIns, riskReports }

extension NotificationCategoryX on NotificationCategory {
  String get label => switch (this) {
        NotificationCategory.medications => 'Medications',
        NotificationCategory.checkIns => 'Check-ins',
        NotificationCategory.riskReports => 'Risk Reports',
      };

  String labelLocalized(AppLocalizations l) => switch (this) {
        NotificationCategory.medications => l.notifCategoryMedications,
        NotificationCategory.checkIns => l.notifCategoryCheckIns,
        NotificationCategory.riskReports => l.notifCategoryRiskReports,
      };
}

// Each kind has its own look (icon, tag color, button style).
enum NotificationKind {
  actionRequired,
  clinicalAssessment,
  urgentEvent,
  archivedRoutine,
}

class AppNotification {
  final String id;
  final NotificationKind kind;
  final NotificationCategory category;
  final String tag;
  final String meta;
  final String title;
  final String body;
  final String actionLabel;
  final String opensScreen;
  final bool isRead;

  const AppNotification({
    required this.id,
    required this.kind,
    required this.category,
    required this.tag,
    required this.meta,
    required this.title,
    required this.body,
    required this.actionLabel,
    required this.opensScreen,
    this.isRead = false,
  });

  String tagLocalized(AppLocalizations l) => switch (id) {
        'n1' => l.notifTagActionRequired,
        'n2' => l.notifTagClinicalAssessment,
        'n3' => l.notifTagUrgentEvent,
        'n4' => l.notifTagArchivedRoutine,
        _ => tag,
      };

  String metaLocalized(AppLocalizations l) => switch (id) {
        'n1' => l.notifMeta1,
        'n2' => l.notifMeta2,
        'n3' => l.notifMeta3,
        'n4' => l.notifMeta4,
        _ => meta,
      };

  String titleLocalized(AppLocalizations l) => switch (id) {
        'n1' => l.notifTitle1,
        'n2' => l.notifTitle2,
        'n3' => l.notifTitle3,
        'n4' => l.notifTitle4,
        _ => title,
      };

  String bodyLocalized(AppLocalizations l) => switch (id) {
        'n1' => l.notifBody1,
        'n2' => l.notifBody2,
        'n3' => l.notifBody3,
        'n4' => l.notifBody4,
        _ => body,
      };

  String actionLabelLocalized(AppLocalizations l) => switch (id) {
        'n1' => l.notifAction1,
        'n2' => l.notifAction2,
        'n3' => l.notifAction3,
        'n4' => l.notifAction4,
        _ => actionLabel,
      };

  AppNotification copyWith({bool? isRead}) => AppNotification(
        id: id,
        kind: kind,
        category: category,
        tag: tag,
        meta: meta,
        title: title,
        body: body,
        actionLabel: actionLabel,
        opensScreen: opensScreen,
        isRead: isRead ?? this.isRead,
      );
}

// Placeholder data until a notifications repository / backend exists.
const List<AppNotification> sampleNotifications = [
  AppNotification(
    id: 'n1',
    kind: NotificationKind.actionRequired,
    category: NotificationCategory.medications,
    tag: 'ACTION REQUIRED',
    meta: '10m ago • Oncology Care Plan',
    title: 'Medication Due: Ondansetron 8mg',
    body:
        'Scheduled dose for 2:00 PM is due now. Please confirm once taken to maintain symptom management and counter chemotherapy-induced nausea.',
    actionLabel: 'Confirm Dose',
    opensScreen: 'M-10',
  ),
  AppNotification(
    id: 'n2',
    kind: NotificationKind.clinicalAssessment,
    category: NotificationCategory.riskReports,
    tag: 'CLINICAL ASSESSMENT',
    meta: '2h ago • AI Triage & Clinical Team',
    title: 'Morning Check-in Evaluated',
    body:
        'Your morning report was evaluated (Moderate Nausea • Yellow Alert). Clinical guidance and nurse review window updated. Hydration protocol recommended.',
    actionLabel: 'View Clinical Assessment',
    opensScreen: 'M-08',
  ),
  AppNotification(
    id: 'n3',
    kind: NotificationKind.urgentEvent,
    category: NotificationCategory.riskReports,
    tag: 'URGENT EVENT',
    meta: 'Yesterday • 10:42 PM',
    title: 'Emergency SOS Sent',
    body:
        'Emergency alert was recorded and sent to Dr. Khalid, on-call oncology nurse, and primary caregiver Fatima. Protocol resolved successfully.',
    actionLabel: 'View SOS Details',
    opensScreen: 'M-12',
    isRead: true,
  ),
  AppNotification(
    id: 'n4',
    kind: NotificationKind.archivedRoutine,
    category: NotificationCategory.checkIns,
    tag: 'ARCHIVED ROUTINE',
    meta: 'Sep 28 • 8:05 AM',
    title: 'Daily Morning Check-in',
    body:
        'Your scheduled 8:00 AM check-in was logged. Vitals and symptoms archived in your health history.',
    actionLabel: 'View Check-in',
    opensScreen: 'M-14',
    isRead: true,
  ),
];
