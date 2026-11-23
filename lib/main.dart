import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raqeeb/core/theme/app_theme.dart';
import 'package:raqeeb/ui/home_screen/home_screen.dart';
import 'package:raqeeb/ui/login_screen/login_screen.dart';
import 'package:raqeeb/ui/settings/settings_screen.dart';
import 'package:raqeeb/ui/sos_screens/sos_confirmation_screen.dart';
import 'package:raqeeb/ui/sos_screens/sos_sent_screen.dart';
import 'l10n/app_localizations.dart';


import 'package:raqeeb/ui/checkin_screen/checkin_symptoms_screen.dart';
import 'package:raqeeb/ui/notifications_screen/notifications_screen.dart';
import 'package:raqeeb/ui/splash_screen/splash_screen.dart';
import 'package:raqeeb/data/models/app_notification.dart';
import 'package:raqeeb/ui/home_screen/widgets/evening_checkin_card.dart' show Mood;

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
          SplashScreen.route: (_) => const SplashScreen(),
          LoginScreen.route: (_) => const LoginScreen(),
          SosConfirmationScreen.route: (_) => const SosConfirmationScreen(),
          SosSentScreen.route: (_) => const SosSentScreen(),
          HomeScreen.route: (_) => HomeScreen(onOpenProfileTab: () {}),
          SettingsScreen.route: (_) => const SettingsScreen(),
          CheckinSymptomsScreen.route: (context) {
            final mood = ModalRoute.of(context)?.settings.arguments as Mood?;
            return CheckinSymptomsScreen(mood: mood);
          },
          NotificationsScreen.route: (context) {
            final args = ModalRoute.of(context)?.settings.arguments as List<AppNotification>?;
            return NotificationsScreen(initialNotifications: args ?? []);
          },
        },
        initialRoute: SplashScreen.route,
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

