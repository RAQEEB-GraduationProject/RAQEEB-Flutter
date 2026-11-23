import 'package:flutter/material.dart';

enum SymptomCategory { digestive, general, painNeuro }

extension SymptomCategoryX on SymptomCategory {
  String get label => switch (this) {
        SymptomCategory.digestive => 'Digestive',
        SymptomCategory.general => 'General',
        SymptomCategory.painNeuro => 'Pain & Neuro',
      };
}

class Symptom {
  final String id;
  final String name;
  final String description;
  final IconData icon;
  final SymptomCategory category;

  const Symptom({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.category,
  });
}

// Placeholder list until the backend / repository exists.
const List<Symptom> allSymptoms = [
  Symptom(
    id: 'nausea',
    name: 'Nausea',
    description: 'Feeling sick to your stomach',
    icon: Icons.sick_outlined,
    category: SymptomCategory.digestive,
  ),
  Symptom(
    id: 'fatigue',
    name: 'Fatigue',
    description: 'Unusual tiredness',
    icon: Icons.battery_2_bar_rounded,
    category: SymptomCategory.general,
  ),
  Symptom(
    id: 'vomiting',
    name: 'Vomiting',
    description: 'Throwing up',
    icon: Icons.stars_outlined,
    category: SymptomCategory.digestive,
  ),
  Symptom(
    id: 'shortness_of_breath',
    name: 'Shortness of Breath',
    description: 'Difficulty breathing',
    icon: Icons.air_rounded,
    category: SymptomCategory.general,
  ),
  Symptom(
    id: 'numbness',
    name: 'Numbness & Tingling',
    description: 'Pins and needles in fingers or toes',
    icon: Icons.fingerprint_rounded,
    category: SymptomCategory.painNeuro,
  ),
  Symptom(
    id: 'fever',
    name: 'Fever & Shivers',
    description: 'Feeling hot or having chills',
    icon: Icons.device_thermostat_rounded,
    category: SymptomCategory.general,
  ),
  // The design shows "All (8)" but only 5 cards, so these 2 are placeholders.
  Symptom(
    id: 'diarrhea',
    name: 'Diarrhea',
    description: 'Loose or watery stools',
    icon: Icons.water_drop_outlined,
    category: SymptomCategory.digestive,
  ),
  Symptom(
    id: 'headache',
    name: 'Headache',
    description: 'Pain or pressure in your head',
    icon: Icons.psychology_alt_outlined,
    category: SymptomCategory.painNeuro,
  ),
];
