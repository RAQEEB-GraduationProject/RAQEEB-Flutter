import 'package:flutter/material.dart';
import 'package:raqeeb/presentation/app_colors.dart';
import 'package:raqeeb/presentation/app_styles.dart';
import 'package:raqeeb/screens/sos_sent_screen.dart';
import 'package:raqeeb/widgets/numbered_step.dart';
import 'package:raqeeb/widgets/pulse_icon.dart';
import 'package:raqeeb/widgets/sos_app_bar.dart';
import 'package:raqeeb/widgets/sos_button.dart';
import 'package:raqeeb/widgets/sos_card.dart';

class SosConfirmationScreen extends StatelessWidget {
  /// When true, shows the "No internet - an SMS will be sent" banner.
  /// TODO: drive this from a connectivity check (e.g. connectivity_plus).
  final bool isOffline;

  const SosConfirmationScreen({super.key, this.isOffline = false});

  void _sendSos(BuildContext context) {
    // TODO: send the SOS (API call, or SMS when offline)
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SosSentScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const SosAppBar(title: 'Sos Confirmation'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
          child: Column(
            children: [
              SosCard(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Column(
                  children: [
                    const PulseIcon(
                      icon: Icons.priority_high_rounded,
                      color: AppColors.criticalRed,
                      ringColor: AppColors.criticalRedBg,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Emergency SOS Confirmation',
                      textAlign: TextAlign.center,
                      style: AppStyles.jakartaSemiBoldCharcoal20.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Do you need urgent clinical emergency\nassistance right now?',
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
                          'Pressing SEND SOS will instantly:',
                          style: AppStyles.jakartaBoldCharcoal14.copyWith(
                            fontSize: 13,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const NumberedStep(
                      number: 1,
                      children: [
                        TextSpan(text: 'Log your SOS with the current time.'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    NumberedStep(
                      number: 2,
                      children: [
                        const TextSpan(text: 'Alert your primary oncologist '),
                        boldSpan('Dr. Khalid'),
                        const TextSpan(text: ' and on-call nurse '),
                        boldSpan('Sarah N.'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    NumberedStep(
                      number: 3,
                      children: [
                        const TextSpan(
                          text:
                              'Send an emergency SMS & push dispatch to registered caregiver ',
                        ),
                        boldSpan('Fatima Al-Otaibi.'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SosButton(
                text: 'SEND EMERGENCY SOS NOW',
                icon: Icons.emergency_outlined,
                type: SosButtonType.danger,
                onPressed: () => _sendSos(context),
              ),
              const SizedBox(height: 12),
              SosButton(
                text: "Cancel — I'm Safe",
                icon: Icons.verified_user_outlined,
                onPressed: () => Navigator.maybePop(context),
              ),
              const SizedBox(height: 14),
              SosButton(
                text: 'Call Hospital',
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
              'No internet - an SMS will be sent to your caregiver',
              textAlign: TextAlign.center,
              style: AppStyles.jakartaMediumCharcoal12.copyWith(fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
