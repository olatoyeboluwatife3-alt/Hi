import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl_standalone.dart' if (dart.library.html) 'package:intl/intl_browser.dart';

import '../screens/onboarding/language_selection_screen.dart';

class AppLocalizations {
  static const supportedLocales = [
    Locale('en'),
    Locale('yo'), // Yoruba
    Locale('ig'), // Igbo
    Locale('ha'), // Hausa
    Locale('pcm'), // Nigerian Pidgin (ISO 639-3 code)
  ];

  static const localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}

class LocalizationProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (AppLocalizations.supportedLocales.contains(locale)) {
      _locale = locale;
      notifyListeners();
    }
  }

  void setLocaleByLanguageCode(String languageCode) {
    final newLocale = Locale(languageCode);
    setLocale(newLocale);
  }
}
