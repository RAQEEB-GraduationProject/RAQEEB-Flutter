import 'package:flutter/material.dart';
import 'package:raqeeb/data/models/app_notification.dart';
import 'package:raqeeb/ui/checkin_screen/checkin_symptoms_screen.dart';
import 'package:raqeeb/ui/notifications_screen/notifications_screen.dart';
import 'package:raqeeb/ui/home_screen/widgets/care_journey_card.dart';
import 'package:raqeeb/ui/home_screen/widgets/care_team_section.dart';
import 'package:raqeeb/ui/home_screen/widgets/daily_word_card.dart';
import 'package:raqeeb/ui/home_screen/widgets/evening_checkin_card.dart';
import 'package:raqeeb/ui/home_screen/widgets/home_header.dart';
import 'package:raqeeb/ui/home_screen/widgets/medication_card.dart';
import 'package:raqeeb/ui/sos_screens/sos_confirmation_screen.dart';
import 'package:raqeeb/ui/sos_screens/widgets/sos_button.dart';
import '../../core/theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  // Asks the shell to switch to the Profile tab.
  final VoidCallback onOpenProfileTab;

  static const String route = '/home';

  const HomeScreen({super.key, required this.onOpenProfileTab});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Today's care journey = evening check-in + 2 doses + hydration.
  // The morning dose and the hydration goal are already done in the design.
  static const int _morningDosesTaken = 1;
  static const int _totalDoses = 2;
  static const int _hydrationDone = 1;
  static const int _totalTasks = 1 + _totalDoses + 1;

  static const List<ScheduleItem> _schedule = [
    ScheduleItem(
      time: '11:30 AM',
      title: 'Hydration Target (500ml)',
      status: 'Scheduled',
      color: Color(0xFF3B82F6),
    ),
    ScheduleItem(
      time: '04:00 PM',
      title: 'Rest & Fatigue Pause (30m)',
      status: 'Upcoming',
      color: Color(0xFFA855F7),
    ),
  ];

  static const List<CareTeamMember> _careTeam = [
    CareTeamMember(
      name: 'Dr. Khalid A.',
      role: 'Doctor',
      initials: 'KA',
      avatarColor: AppColors.tealBg,
      accentColor: AppColors.tealAccent,
    ),
    CareTeamMember(
      name: 'Sarah N.',
      role: 'Nurse',
      initials: 'SN',
      avatarColor: AppColors.softLavender,
      accentColor: AppColors.violetAccent,
    ),
  ];

  Mood? _mood; // no default: nothing selected until the patient taps
  bool _checkinDone = false;
  DoseStatus _tamoxifen = DoseStatus.pending;
  List<AppNotification> _notifications = sampleNotifications;

  int get _medsTaken =>
      _morningDosesTaken + (_tamoxifen == DoseStatus.taken ? 1 : 0);

  int get _completedTasks =>
      (_checkinDone ? 1 : 0) + _medsTaken + _hydrationDone;

  // --- Actions that work locally (no navigation) ---

  void _selectMood(Mood mood) => setState(() => _mood = mood);

  // Tapping the active button again undoes it.
  void _markTaken() => setState(() {
        _tamoxifen = _tamoxifen == DoseStatus.taken
            ? DoseStatus.pending
            : DoseStatus.taken;
      });

  void _markSkipped() => setState(() {
        _tamoxifen = _tamoxifen == DoseStatus.skipped
            ? DoseStatus.pending
            : DoseStatus.skipped;
      });

  bool get _hasUnreadNotifications => _notifications.any((n) => !n.isRead);

  // --- Navigation to existing screens ---

  // Opens the check-in flow with the mood picked on the emoji row.
  Future<void> _startCheckin() async {
    final done = await Navigator.pushNamed(
      context,
      CheckinSymptomsScreen.route,
      arguments: _mood,
    );
    // The flow pops with `true` once the whole check-in is submitted.
    if (done == true && mounted) setState(() => _checkinDone = true);
  }

  // The notifications screen returns the updated list (read / removed),
  // and whether the patient tapped its profile avatar.
  Future<void> _openNotifications() async {
    final result = await Navigator.pushNamed(
      context,
      NotificationsScreen.route,
      arguments: _notifications,
    );
    if (result == null || !mounted) return;
    final notifResult = result as NotificationsResult;
    setState(() => _notifications = notifResult.notifications);
    if (notifResult.openProfile) widget.onOpenProfileTab();
  }

  void _openSos() {
    Navigator.pushNamed(context, SosConfirmationScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
          child: Column(
            children: [
              HomeHeader(
                name: 'Fatima',
                subtitle:
                    'Cycle 3 • Day 5 of Chemotherapy (AC Protocol)',
                hasUnreadNotifications: _hasUnreadNotifications,
                onBellTap: _openNotifications,
              ),
              const SizedBox(height: 16),
              const DailyWordCard(
                day: 5,
                quote:
                    "Take things one step at a time. You're doing your best, and every small step matters. Be kind to yourself today.",
                tip:
                    'Sip water steadily in small amounts through this morning.',
              ),
              const SizedBox(height: 16),
              EveningCheckinCard(
                dueTime: '8:30 PM',
                completed: _checkinDone,
                selectedMood: _mood,
                onMoodSelected: _selectMood,
                onStart: _startCheckin,
              ),
              const SizedBox(height: 16),
              CareJourneyCard(
                completed: _completedTasks,
                total: _totalTasks,
                checkinDone: _checkinDone,
                medsTaken: _medsTaken,
                medsTotal: _totalDoses,
              ),
              const SizedBox(height: 16),
              MedicationCard(
                name: 'Tamoxifen',
                dose: '20 mg',
                period: 'Evening',
                dueText: 'Due at 8:00 PM • In 2 hours',
                status: _tamoxifen,
                schedule: _schedule,
                nextDose: 'Next dose: AC Protocol Day 6',
                onTaken: _markTaken,
                onSkip: _markSkipped,
                onViewSchedule: () {
                  // TODO: navigate to schedule & meds screen (no screen yet)
                },
              ),
              const SizedBox(height: 20),
              CareTeamSection(
                members: _careTeam,
                onDirectoryTap: () {
                  // TODO: navigate to clinic directory (no screen yet)
                },
                onCallTap: (member) {
                  // TODO: launch phone dialer (url_launcher)
                },
              ),
              const SizedBox(height: 20),
              SosButton(
                text: 'SOS – ALERT MY CARE TEAM',
                icon: Icons.error_rounded,
                type: SosButtonType.danger,
                onPressed: _openSos,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
