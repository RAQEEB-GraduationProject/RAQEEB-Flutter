import 'package:flutter/material.dart';
import 'package:raqeeb/core/theme/app_theme.dart';
import 'package:raqeeb/ui/login_screen/login_screen.dart';
import 'package:raqeeb/ui/settings/settings_screen.dart';
import 'package:raqeeb/ui/main_shell/main_shell.dart';
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  static Locale getLocale(BuildContext context) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    return state?._locale ?? const Locale('en');
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: _locale,
      routes: {
        SplashScreen.route: (_) => const SplashScreen(),
        LoginScreen.route: (_) => const LoginScreen(),
        MainShell.route: (_) => const MainShell(),
        SosConfirmationScreen.route: (_) => const SosConfirmationScreen(),
        SosSentScreen.route: (_) => const SosSentScreen(),
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
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

