import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_styles.dart';
import '../../sos_screens/widgets/sos_card.dart';

class OncologyProtocolCard extends StatelessWidget {
  final String protocol;
  final String cycleTimeline;
  final String monitoringStatus;
  final String regimen;

  const OncologyProtocolCard({
    super.key,
    required this.protocol,
    required this.cycleTimeline,
    required this.monitoringStatus,
    required this.regimen,
  });

  @override
  Widget build(BuildContext context) {
    return SosCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const _IconCircle(icon: Icons.monitor_heart_outlined),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Active Oncology Protocol',
                  style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
                    fontSize: 18,
                    letterSpacing: -0.3,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.limeGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 5,
                      height: 5,
                      decoration: const BoxDecoration(
                        color: AppColors.stableGreen,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Active',
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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.tealBg.withValues(alpha: 0.55),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              children: [
                _InfoRow(label: 'Chemotherapy Protocol', value: protocol),
                const SizedBox(height: 10),
                _InfoRow(
                  label: 'Cycle Timeline',
                  value: cycleTimeline,
                  valueColor: AppColors.tealAccent,
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Monitoring Status',
                        style: _labelStyle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.tealBg,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          monitoringStatus,
                          style: AppStyles.jakartaBoldCharcoal14.copyWith(
                            fontSize: 10.5,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.tealBg.withValues(alpha: 0.55),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.medical_information_outlined,
                      size: 15,
                      color: AppColors.charcoal,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Regimen Details',
                      style: AppStyles.jakartaBoldCharcoal14.copyWith(
                        fontSize: 11,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  regimen,
                  style: AppStyles.jakartaRegularCharcoal16.copyWith(
                    fontSize: 12,
                    color: AppColors.charcoal.withValues(alpha: 0.85),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static final TextStyle _labelStyle =
      AppStyles.jakartaRegularCharcoal16.copyWith(fontSize: 12);
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoRow({required this.label, required this.value, this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            label,
            style: AppStyles.jakartaRegularCharcoal16.copyWith(fontSize: 12),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.start,
            style: AppStyles.jakartaBoldCharcoal14.copyWith(
              fontSize: 12,
              letterSpacing: 0,
              color: valueColor ?? AppColors.charcoal,
            ),
          ),
        ),
      ],
    );
  }
}

class _IconCircle extends StatelessWidget {
  final IconData icon;

  const _IconCircle({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: const BoxDecoration(
        color: AppColors.tealBg,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 19, color: AppColors.tealAccent),
    );
  }
}
