import 'package:flutter/material.dart';



  Locale _locale = const Locale('en');
  Locale get locale => _locale;


  static const supportedLocales = [
    Locale('en'),
    Locale('yo'), // Yoruba
    Locale('ig'), // Igbo
    Locale('ha'), // Hausa
  ];

  void setLocale(Locale locale) {
    if (supportedLocales.contains(locale)) {
      _locale = locale;

      notifyListeners();
    }
  }

  void setLocaleByLanguageCode(String languageCode) {
    setLocale(Locale(languageCode));
  }

