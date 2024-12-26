import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vetcare_project/screens.dart/food_safety.dart/upcoming_inspection_page.dart';
import 'package:vetcare_project/screens.dart/layout.dart/first_page.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class LocaleNotifier extends ValueNotifier<Locale> {
  LocaleNotifier(super.value);

  void changeLocale(Locale locale) {
    if (value != locale) {
      value = locale;
      notifyListeners();
    }
  }
}

final localeNotifier = LocaleNotifier(const Locale('en'));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: localeNotifier,
      builder: (context, locale, _) {
        return MaterialApp(
          locale: locale,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          home: const FirstScreen(),
        );
      },
    );
  }
}
