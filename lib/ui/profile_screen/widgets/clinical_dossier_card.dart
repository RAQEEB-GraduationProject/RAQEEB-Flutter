import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../../l10n/app_localizations.dart';
import '../../sos_screens/widgets/sos_card.dart';

class DossierField {
  final String label;
  final String value;
  final bool highlight;

  const DossierField({
    required this.label,
    required this.value,
    this.highlight = false,
  });
}

class ClinicalDossierCard extends StatelessWidget {
  final List<DossierField> fields;
  final String footerNote;

  const ClinicalDossierCard({
    super.key,
    required this.fields,
    required this.footerNote,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return SosCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: AppColors.tealBg,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.medical_services_outlined,
                  size: 19,
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  l.profileClinicalDossierTitle,
                  style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
                    fontSize: 18,
                    letterSpacing: -0.3,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.tealBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.lock_outline_rounded,
                      size: 12,
                      color: AppColors.charcoal,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      l.profileReadOnly,
                      style: AppStyles.jakartaBoldCharcoal14.copyWith(
                        fontSize: 11,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          for (final field in fields) ...[
            _DossierRow(field: field),
            const SizedBox(height: 8),
          ],
          const SizedBox(height: 2),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.tealBg.withValues(alpha: 0.8),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.gpp_good_outlined,
                  size: 16,
                  color: AppColors.tealAccent,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    footerNote,
                    style: AppStyles.jakartaRegularCharcoal16.copyWith(
                      fontSize: 11.5,
                      color: AppColors.charcoal.withValues(alpha: 0.85),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DossierRow extends StatelessWidget {
  final DossierField field;

  const _DossierRow({required this.field});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
      decoration: BoxDecoration(
        color: AppColors.tealBg.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Text(
              field.label,
              style: AppStyles.jakartaRegularCharcoal16.copyWith(fontSize: 11.5),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 6,
            child: Text(
              field.value,
              textAlign: TextAlign.end,
              style: AppStyles.jakartaBoldCharcoal14.copyWith(
                fontSize: 11.5,
                letterSpacing: 0,
                color: field.highlight
                    ? AppColors.tealAccent
                    : AppColors.charcoal,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Icon(
            Icons.lock_outline_rounded,
            size: 13,
            color: AppColors.charcoal.withValues(alpha: 0.45),
          ),
        ],
      ),
    );
  }
}
