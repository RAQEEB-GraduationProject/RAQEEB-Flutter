import 'package:flutter/material.dart';
import 'package:raqeeb/l10n/app_localizations.dart';
import 'package:raqeeb/ui/sos_screens/widgets/pulse_icon.dart';
import 'package:raqeeb/ui/sos_screens/widgets/sos_app_bar.dart';
import 'package:raqeeb/ui/sos_screens/widgets/sos_button.dart';
import 'package:raqeeb/ui/sos_screens/widgets/sos_card.dart';
import 'package:raqeeb/ui/sos_screens/widgets/status_tile.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';

class SosSentScreen extends StatelessWidget {
  static const String route ="/sos_sent";

  final String sentAt;

  const SosSentScreen({super.key, this.sentAt = '10:42 PM'});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: SosAppBar(title: l.sosConfirmationTitle),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
          child: Column(
            children: [
              const PulseIcon(
                icon: Icons.check_rounded,
                color: AppColors.limeGreen,
                ringColor: AppColors.limeGreen,
                iconColor: AppColors.stableGreen,
                size: 110,
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.charcoal.withValues(alpha: 0.07),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.stableGreen,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      l.sosSentAt(sentAt),
                      style: AppStyles.jakartaMediumCharcoal12.copyWith(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                l.sosSentTitle,
                style: AppStyles.jakartaBoldCharcoal32.copyWith(fontSize: 28),
              ),
              const SizedBox(height: 6),
              Text(
                l.sosSentSubtitle,
                textAlign: TextAlign.center,
                style: AppStyles.jakartaRegularMuted16.copyWith(fontSize: 13),
              ),
              const SizedBox(height: 18),
              SosCard(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.powderPink,
                          ),
                          child: const Icon(
                            Icons.emergency_rounded,
                            size: 16,
                            color: AppColors.charcoal,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            l.sosDispatchPriority,
                            style: AppStyles.jakartaBoldCharcoal14.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.limeGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            l.sosDispatchActive,
                            style: AppStyles.jakartaBoldStableGreen12.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    StatusTile(
                      icon: Icons.medical_services_outlined,
                      title: l.sosRapidResponseTitle,
                      subtitle: l.sosRapidResponseSubtitle,
                      extra: Row(
                        children: [
                          const Icon(
                            Icons.check_circle,
                            size: 11,
                            color: AppColors.stableGreen,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            l.sosRapidResponseStatus,
                            style: AppStyles.jakartaBoldStableGreen12.copyWith(
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    StatusTile(
                      icon: Icons.sms_outlined,
                      title: l.sosCaregiverAlertTitle,
                      subtitle: l.sosCaregiverAlertSubtitle,
                      extra: Text(
                        l.sosCaregiverAlertDelivery,
                        style: AppStyles.jakartaBoldCharcoal14.copyWith(
                          fontSize: 10,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    StatusTile(
                      icon: Icons.location_on_outlined,
                      title: l.sosSharedLocationTitle,
                      subtitle: l.sosSharedLocationSubtitle,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              SosCard(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.softLavender,
                      child: Icon(Icons.person, color: AppColors.charcoal),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l.sosCaregiverName,
                            style: AppStyles.jakartaBoldCharcoal14.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                            ),
                          ),
                          Text(
                            l.sosCaregiverStatus,
                            style: AppStyles.jakartaMediumMuted12.copyWith(
                              fontSize: 11,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          l.roleCaregiver,
                          style: AppStyles.jakartaBoldStableGreen12.copyWith(
                            fontSize: 10,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.charcoal.withValues(alpha: 0.07),
                      ),
                      child: const Icon(
                        Icons.call_outlined,
                        size: 18,
                        color: AppColors.charcoal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              SosButton(
                text: l.sosCallHospitalLineNow,
                icon: Icons.call,
                type: SosButtonType.primary,
                onPressed: () {
                  // TODO: launch phone dialer (url_launcher)
                },
              ),
              const SizedBox(height: 12),
              SosButton(
                text: l.sosBackToHome,
                icon: Icons.home_outlined,
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
