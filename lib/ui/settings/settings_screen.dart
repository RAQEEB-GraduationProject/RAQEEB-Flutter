import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raqeeb/core/theme/app_colors.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';
import 'package:raqeeb/ui/settings/language_bottom_sheet.dart';
import 'package:raqeeb/ui/settings/logout_dialog.dart';

class SettingsScreen extends StatefulWidget {
  static const String route = '/settings';

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _alertsEnabled = true;
  bool _highContrastEnabled = false;

  static const Color _softRed = Color(0xFFDC2626);
  static const Color _softRedBg = Color(0xFFFFF0F0);
  static const Color _syncedGreen = Color(0xFF16A34A);
  static const Color _careTeamBg = Color(0xFFF5F3FF);

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(context, l),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatusPill(l),
                    const SizedBox(height: 12),
                    _buildProfileCard(context, l),
                    const SizedBox(height: 20),
                    _buildSectionLabel(l.settingsPreferences),
                    const SizedBox(height: 8),
                    _buildPreferencesCard(context, l),
                    const SizedBox(height: 20),
                    _buildSectionLabel(l.settingsSupportInfo),
                    const SizedBox(height: 8),
                    _buildSupportCard(l),
                    const SizedBox(height: 20),
                    _buildLogOutButton(context, l),
                    const SizedBox(height: 8),
                    Center(
                      child: Text(
                        l.settingsLogOutFootnote,
                        style: AppStyles.jakartaMediumMuted12.copyWith(
                          letterSpacing: 0,
                          fontSize: 11,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, AppLocalizations l) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
            color: AppColors.charcoal,
            onPressed: () => Navigator.of(context).maybePop(),
          ),
          Expanded(
            child: Text(
              l.settingsTitle,
              style: AppStyles.jakartaSemiBoldCharcoal20,
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(Icons.notifications_outlined,
                  size: 26, color: AppColors.charcoal),
              Positioned(
                top: -2,
                right: -2,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: const BoxDecoration(
                    color: Color(0xFFDC2626),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget _buildStatusPill(AppLocalizations l) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFEEEEEE)),
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: AppColors.primaryPink.withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.favorite_rounded,
                size: 12, color: AppColors.primaryPink),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              l.settingsCareJourneyStatus,
              style: AppStyles.jakartaMediumCharcoal12.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: const Color(0xFFDDF3E4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Color(0xFF16A34A),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  l.settingsSynced,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF16A34A),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context, AppLocalizations l) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFaAvatar(size: 52),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              l.settingsPatientName,
                              style: AppStyles.jakartaSemiBoldCharcoal20
                                  .copyWith(fontSize: 17),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(Icons.verified_rounded,
                              size: 16, color: AppColors.primaryPink),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            l.settingsPatientId,
                            style: AppStyles.jakartaMediumMuted12,
                          ),
                          const SizedBox(width: 6),
                          _buildPill(
                            l.settingsPatientLabel,
                            bgColor: AppColors.powderPink,
                            textColor: AppColors.deepPink,
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(Icons.local_hospital_outlined,
                              size: 13, color: AppColors.mutedText),
                          const SizedBox(width: 4),
                          Flexible(
                            child: Text(
                              l.settingsClinicName,
                              style: AppStyles.jakartaMediumMuted12.copyWith(
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Assigned Care Team box
          Container(
            margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: _careTeamBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.people_alt_outlined,
                        size: 14, color: AppColors.mutedText),
                    const SizedBox(width: 6),
                    Text(
                      l.settingsAssignedCareTeam,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.6,
                        color: AppColors.mutedText,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      l.settingsCareTeamDoctor,
                      style: AppStyles.jakartaMediumCharcoal12.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      ' • ',
                      style: AppStyles.jakartaMediumMuted12.copyWith(
                        letterSpacing: 0,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        l.settingsCareTeamCaregiver,
                        style: AppStyles.jakartaMediumMuted12.copyWith(
                          letterSpacing: 0,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Security note
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.lock_outline_rounded,
                    size: 13, color: AppColors.mutedText),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    l.settingsSecurityNote,
                    style: AppStyles.jakartaMediumMuted12.copyWith(
                      letterSpacing: 0,
                      fontSize: 11,
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

  Widget _buildSectionLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.8,
        color: AppColors.mutedText,
      ),
    );
  }

  Widget _buildPreferencesCard(BuildContext context, AppLocalizations l) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // App Language row
          InkWell(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (_) => const LanguageBottomSheet(),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  _buildIconBadge(
                    icon: Icons.language_rounded,
                    iconColor: AppColors.primaryTeal,
                    bgColor: AppColors.aquaTint,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l.settingsAppLanguage,
                            style: AppStyles.jakartaMediumCharcoal12.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                        const SizedBox(height: 2),
                        Text(l.settingsAppLanguageSubtitle,
                            style: AppStyles.jakartaMediumMuted12.copyWith(
                              letterSpacing: 0,
                            )),
                      ],
                    ),
                  ),
                  Text(
                    l.settingsAppLanguageCurrent,
                    style: AppStyles.jakartaMediumCharcoal12.copyWith(
                      color: AppColors.primaryTeal,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(Icons.chevron_right_rounded,
                      size: 18, color: AppColors.mutedText),
                ],
              ),
            ),
          ),
          _buildDivider(),
          // Check-in & Medication Alerts
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                _buildIconBadge(
                  icon: Icons.notifications_active_outlined,
                  iconColor: AppColors.primaryPink,
                  bgColor: AppColors.powderPink,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l.settingsCheckinAlerts,
                          style: AppStyles.jakartaMediumCharcoal12.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(height: 2),
                      Text(l.settingsCheckinAlertsSubtitle,
                          style: AppStyles.jakartaMediumMuted12.copyWith(
                            letterSpacing: 0,
                          )),
                    ],
                  ),
                ),
                Switch(
                  value: _alertsEnabled,
                  onChanged: (v) => setState(() => _alertsEnabled = v),
                  activeColor: AppColors.primaryPink,
                  activeTrackColor: AppColors.primaryPink.withOpacity(0.35),
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: AppColors.disabledGrey,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ],
            ),
          ),
          _buildDivider(),
          // High-Contrast & Large Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                _buildIconBadge(
                  icon: Icons.remove_red_eye_outlined,
                  iconColor: AppColors.mutedText,
                  bgColor: const Color(0xFFF0F0F0),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l.settingsHighContrast,
                          style: AppStyles.jakartaMediumCharcoal12.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(height: 2),
                      Text(l.settingsHighContrastSubtitle,
                          style: AppStyles.jakartaMediumMuted12.copyWith(
                            letterSpacing: 0,
                          )),
                    ],
                  ),
                ),
                Switch(
                  value: _highContrastEnabled,
                  onChanged: (v) => setState(() => _highContrastEnabled = v),
                  activeColor: AppColors.primaryPink,
                  activeTrackColor: AppColors.primaryPink.withOpacity(0.35),
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: AppColors.disabledGrey,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSupportCard(AppLocalizations l) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildSupportRow(
            icon: Icons.help_outline_rounded,
            iconColor: AppColors.primaryPink,
            iconBg: AppColors.powderPink,
            title: l.settingsHelpGuide,
            subtitle: l.settingsHelpGuideSubtitle,
            subtitleColor: AppColors.mutedText,
            isFirst: true,
          ),
          _buildDivider(),
          _buildSupportRow(
            icon: Icons.shield_outlined,
            iconColor: AppColors.primaryTeal,
            iconBg: AppColors.aquaTint,
            title: l.settingsPrivacy,
            subtitle: l.settingsPrivacySubtitle,
            subtitleColor: AppColors.primaryTeal,
          ),
          _buildDivider(),
          _buildSupportRow(
            icon: Icons.info_outline_rounded,
            iconColor: AppColors.mutedText,
            iconBg: const Color(0xFFF0F0F0),
            title: l.settingsAbout,
            subtitle: l.settingsAboutSubtitle,
            subtitleColor: AppColors.mutedText,
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSupportRow({
    required IconData icon,
    required Color iconColor,
    required Color iconBg,
    required String title,
    required String subtitle,
    required Color subtitleColor,
    bool isFirst = false,
    bool isLast = false,
  }) {
    return InkWell(
      borderRadius: BorderRadius.vertical(
        top: isFirst ? const Radius.circular(16) : Radius.zero,
        bottom: isLast ? const Radius.circular(16) : Radius.zero,
      ),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            _buildIconBadge(icon: icon, iconColor: iconColor, bgColor: iconBg),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: AppStyles.jakartaMediumCharcoal12.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 2),
                  Text(subtitle,
                      style: AppStyles.jakartaMediumMuted12.copyWith(
                        letterSpacing: 0,
                        color: subtitleColor,
                      )),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded,
                size: 18, color: AppColors.mutedText),
          ],
        ),
      ),
    );
  }

  Widget _buildLogOutButton(BuildContext context, AppLocalizations l) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (_) => const LogoutDialog(),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF0F0),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFFFCDD2), width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.logout_rounded,
                size: 20, color: const Color(0xFFDC2626)),
            const SizedBox(width: 8),
            Text(
              l.settingsLogOut,
              style: AppStyles.jakartaBoldPrimaryPink14.copyWith(
                color: const Color(0xFFDC2626),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconBadge({
    required IconData icon,
    required Color iconColor,
    required Color bgColor,
  }) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, size: 20, color: iconColor),
    );
  }

  Widget _buildFaAvatar({double size = 48}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        'FA',
        style: GoogleFonts.plusJakartaSans(
          fontSize: size * 0.33,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildPill(
    String label, {
    required Color bgColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      indent: 16,
      endIndent: 16,
      color: const Color(0xFFF0F0F0),
    );
  }
}

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: SettingsScreen(), // الشاشة الخاصة بك
      ),
    ),
  );
}
