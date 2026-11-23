import 'package:flutter/material.dart';
import 'package:raqeeb/l10n/app_localizations.dart';
import 'package:raqeeb/ui/sos_screens/sos_sent_screen.dart';
import 'package:raqeeb/ui/sos_screens/widgets/numbered_step.dart';
import 'package:raqeeb/ui/sos_screens/widgets/pulse_icon.dart';
import 'package:raqeeb/ui/sos_screens/widgets/sos_app_bar.dart';
import 'package:raqeeb/ui/sos_screens/widgets/sos_button.dart';
import 'package:raqeeb/ui/sos_screens/widgets/sos_card.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';

class SosConfirmationScreen extends StatelessWidget {
  static const String route ="/sos_confirmation";

  /// When true, shows the "No internet - an SMS will be sent" banner.
  /// TODO: drive this from a connectivity check (e.g. connectivity_plus).
  final bool isOffline;

  const SosConfirmationScreen({super.key, this.isOffline = false});

  void _sendSos(BuildContext context) {
    // TODO: send the SOS (API call, or SMS when offline)
    Navigator.pushReplacementNamed(context, SosSentScreen.route);
  }

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
              SosCard(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Column(
                  children: [
                     PulseIcon(
                      icon: Icons.priority_high_rounded,
                      color: AppColors.criticalRed,
                      ringColor: AppColors.criticalRedBg,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      l.sosConfirmationHeader,
                      textAlign: TextAlign.center,
                      style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      l.sosConfirmationQuestion,
                      textAlign: TextAlign.center,
                      style: AppStyles.jakartaRegularMuted16.copyWith(
                        fontSize: 13,
                      ),
                    ),
                    if (isOffline) ...[
                      const SizedBox(height: 14),
                      _OfflineBanner(),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 14),
              SosCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.notifications_active_outlined,
                          size: 16,
                          color: AppColors.primaryPink,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          l.sosPressingSendWill,
                          style: AppStyles.jakartaBoldCharcoal14.copyWith(
                            fontSize: 13,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    NumberedStep(
                      number: 1,
                      children: [
                        TextSpan(text: l.sosStep1),
                      ],
                    ),
                    const SizedBox(height: 12),
                    NumberedStep(
                      number: 2,
                      children: [
                        TextSpan(text: l.sosStep2Part1),
                        boldSpan(l.sosStep2Doctor),
                        TextSpan(text: l.sosStep2Part2),
                        boldSpan(l.sosStep2Nurse),
                      ],
                    ),
                    const SizedBox(height: 12),
                    NumberedStep(
                      number: 3,
                      children: [
                        TextSpan(
                          text: l.sosStep3Part1,
                        ),
                        boldSpan(l.sosStep3Caregiver),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SosButton(
                text: l.sosSendEmergencyNow,
                icon: Icons.emergency_outlined,
                type: SosButtonType.danger,
                onPressed: () => _sendSos(context),
              ),
              const SizedBox(height: 12),
              SosButton(
                text: l.sosCancelImSafe,
                icon: Icons.verified_user_outlined,
                onPressed: () => Navigator.maybePop(context),
              ),
              const SizedBox(height: 14),
              SosButton(
                text: l.sosCallHospital,
                icon: Icons.call_outlined,
                onPressed: () {
                  // TODO: launch phone dialer (url_launcher)
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OfflineBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.charcoal.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(Icons.wifi_off_rounded, size: 16, color: AppColors.primaryPink),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              l.sosOfflineBanner,
              textAlign: TextAlign.center,
              style: AppStyles.jakartaMediumCharcoal12.copyWith(fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
