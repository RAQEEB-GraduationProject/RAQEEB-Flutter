import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raqeeb/core/theme/app_theme.dart';
import 'package:raqeeb/ui/home_screen/home_screen.dart';
import 'package:raqeeb/ui/login_screen/login_screen.dart';
import 'package:raqeeb/ui/settings/settings_screen.dart';
import 'package:raqeeb/ui/sos_screens/sos_confirmation_screen.dart';
import 'package:raqeeb/ui/sos_screens/sos_sent_screen.dart';
import 'l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginScreen.route: (_) => LoginScreen(),
          SosConfirmationScreen.route: (_) => SosConfirmationScreen(),
          SosSentScreen.route: (_) => SosSentScreen(),
          HomeScreen.route: (_) => HomeScreen(),
          SettingsScreen.route: (_) => const SettingsScreen(),
        },
        initialRoute: LoginScreen.route,
    theme: AppTheme.lightTheme,
    darkTheme: AppTheme.darkTheme,
    themeMode: ThemeMode.light,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        ...GlobalMaterialLocalizations.delegates,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],);

  }
}

