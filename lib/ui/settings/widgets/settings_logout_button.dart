import 'package:flutter/material.dart';
import 'package:raqeeb/core/theme/app_styles.dart';
import 'package:raqeeb/l10n/app_localizations.dart';
import 'package:raqeeb/ui/settings/logout_dialog.dart';

class SettingsLogoutButton extends StatelessWidget {
  const SettingsLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
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
            const Icon(Icons.logout_rounded, size: 20, color: Color(0xFFDC2626)),
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
}
