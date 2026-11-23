import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';
import '../../data/models/symptom.dart';
import '../../l10n/app_localizations.dart';
import '../home_screen/widgets/evening_checkin_card.dart' show Mood;
import 'widgets/checkin_bottom_bar.dart';
import 'widgets/checkin_progress_header.dart';
import 'widgets/feel_fine_card.dart';
import 'widgets/symptom_card.dart';
import 'widgets/symptom_category_chips.dart';
import 'widgets/symptom_search_field.dart';

class CheckinSymptomsScreen extends StatefulWidget {
  static const String route = '/checkin_symptoms';

  // The mood picked on the Home screen, carried through the check-in flow.
  final Mood? mood; // null if the patient didn't pick one

  const CheckinSymptomsScreen({super.key, this.mood});

  @override
  State<CheckinSymptomsScreen> createState() => _CheckinSymptomsScreenState();
}

class _CheckinSymptomsScreenState extends State<CheckinSymptomsScreen> {
  final Set<String> _selectedIds = {};
  bool _feelFine = false;
  String _query = '';
  SymptomCategory? _category; // null = All

  List<Symptom> _visibleSymptoms(AppLocalizations l) {
    final q = _query.trim().toLowerCase();
    return allSymptoms.where((s) {
      final matchesCategory = _category == null || s.category == _category;
      final matchesQuery = q.isEmpty ||
          s.name.toLowerCase().contains(q) ||
          s.description.toLowerCase().contains(q) ||
          s.nameLocalized(l).toLowerCase().contains(q) ||
          s.descriptionLocalized(l).toLowerCase().contains(q);
      return matchesCategory && matchesQuery;
    }).toList();
  }

  bool get _canContinue => _feelFine || _selectedIds.isNotEmpty;

  String _summary(AppLocalizations l) {
    if (_feelFine) return l.checkinSummaryNoSymptoms;
    final n = _selectedIds.length;
    if (n == 0) return l.checkinSummaryNoneSelected;
    return l.checkinSummarySelected(n);
  }

  void _toggleFeelFine() {
    setState(() {
      _feelFine = !_feelFine;
      if (_feelFine) _selectedIds.clear();
    });
  }

  void _toggleSymptom(Symptom symptom) {
    setState(() {
      _feelFine = false;
      if (!_selectedIds.remove(symptom.id)) _selectedIds.add(symptom.id);
    });
  }

  void _continue() {
    // TODO: navigate to the Severity step once that screen exists.
    // For now, we just finish the flow and return true to mark it completed.
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final symptoms = _visibleSymptoms(l);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckinProgressHeader(
                      step: 1,
                      totalSteps: 4,
                      title: l.checkinHeaderTitle,
                    ),
                    const SizedBox(height: 18),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l.checkinFeelingTitle,
                                style: AppStyles.jakartaBoldCharcoal32.copyWith(
                                  fontSize: 24,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                l.checkinFeelingSubtitle,
                                style: AppStyles.jakartaRegularCharcoal16
                                    .copyWith(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Material(
                          color: AppColors.tealBg,
                          shape: const CircleBorder(),
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {
                              // TODO: open symptom info / safety sheet.
                            },
                            child: const SizedBox(
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.health_and_safety_outlined,
                                size: 22,
                                color: AppColors.tealAccent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    FeelFineCard(
                      selected: _feelFine,
                      onTap: _toggleFeelFine,
                    ),
                    const SizedBox(height: 14),
                    SymptomSearchField(
                      onChanged: (value) => setState(() => _query = value),
                    ),
                    const SizedBox(height: 12),
                    SymptomCategoryChips(
                      totalCount: allSymptoms.length,
                      selected: _category,
                      onSelected: (c) => setState(() => _category = c),
                    ),
                    const SizedBox(height: 16),
                    if (symptoms.isEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32),
                        child: Center(
                          child: Text(
                            l.symptomNoSymptomsFound,
                            style: AppStyles.jakartaRegularMuted16,
                          ),
                        ),
                      )
                    else
                      for (final symptom in symptoms) ...[
                        SymptomCard(
                          symptom: symptom,
                          selected: _selectedIds.contains(symptom.id),
                          onTap: () => _toggleSymptom(symptom),
                        ),
                        const SizedBox(height: 12),
                      ],
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
              child: CheckinBottomBar(
                summary: _summary(l),
                enabled: _canContinue,
                continueLabel: l.checkinContinueButton,
                backLabel: l.checkinBackHomeButton,
                onContinue: _continue,
                onBack: () => Navigator.maybePop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
