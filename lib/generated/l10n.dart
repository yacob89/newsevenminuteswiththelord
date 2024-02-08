// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Start!`
  String get start {
    return Intl.message(
      'Start!',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `7 Minutes With The Lord`
  String get appName {
    return Intl.message(
      '7 Minutes With The Lord',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Config`
  String get configuration {
    return Intl.message(
      'Config',
      name: 'configuration',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `{activity, select, calling{Calling on the Name of the Lord} praying{Praying} prayReading{Pray Reading} confession{Confession} consecration{Consecration} thanksgiving{Thanksgiving} petition{Petition} end{Continue to contact The Lord from time to time} other{they}}`
  String activityTitle(String activity) {
    return Intl.select(
      activity,
      {
        'calling': 'Calling on the Name of the Lord',
        'praying': 'Praying',
        'prayReading': 'Pray Reading',
        'confession': 'Confession',
        'consecration': 'Consecration',
        'thanksgiving': 'Thanksgiving',
        'petition': 'Petition',
        'end': 'Continue to contact The Lord from time to time',
        'other': 'they',
      },
      name: 'activityTitle',
      desc: 'activity title',
      args: [activity],
    );
  }

  /// `{activity, select, calling{Calling on the Name of the Lord to set our mind on the spirit - 1 Cor.12:3; Rom. 8:6; 10:12-13} praying{Opening our heart, softening our heart and emptying ourselves. Telling Him that we love Him - 2 Cor. 3:16; Psa. 62:8} prayReading{Using our exercised spirit to pray over a verse or two. Turning the verses into a personal prayer - Eph. 6:17-18; 2 Tim. 3:16} confession{Confessing the sins and offenses on our conscience and removing all blockages to fellowship. Asking for forgiveness and cleansing - 1 John 1:7, 9; Psa. 66:18; Isa. 59:1-2} consecration{Presenting ourselves to the Lord afresh, giving Him the full ground in us - Rom. 12:1-2; 6:13,19; Mark 12:30} thanksgiving{Giving thanks for all things; for all the persons, situations and things in your life and praising Him - Eph. 5:20; 1 Thes. 5:18} petition{Asking the Lord for needs, growth and persons that need salvation - 1 Tim. 2:1: Eph. 6:18; Matt. 7:7; Psa. 143:8} end{Continue to contact The Lord from time to time} other{they}}`
  String activityDescription(String activity) {
    return Intl.select(
      activity,
      {
        'calling':
            'Calling on the Name of the Lord to set our mind on the spirit - 1 Cor.12:3; Rom. 8:6; 10:12-13',
        'praying':
            'Opening our heart, softening our heart and emptying ourselves. Telling Him that we love Him - 2 Cor. 3:16; Psa. 62:8',
        'prayReading':
            'Using our exercised spirit to pray over a verse or two. Turning the verses into a personal prayer - Eph. 6:17-18; 2 Tim. 3:16',
        'confession':
            'Confessing the sins and offenses on our conscience and removing all blockages to fellowship. Asking for forgiveness and cleansing - 1 John 1:7, 9; Psa. 66:18; Isa. 59:1-2',
        'consecration':
            'Presenting ourselves to the Lord afresh, giving Him the full ground in us - Rom. 12:1-2; 6:13,19; Mark 12:30',
        'thanksgiving':
            'Giving thanks for all things; for all the persons, situations and things in your life and praising Him - Eph. 5:20; 1 Thes. 5:18',
        'petition':
            'Asking the Lord for needs, growth and persons that need salvation - 1 Tim. 2:1: Eph. 6:18; Matt. 7:7; Psa. 143:8',
        'end': 'Continue to contact The Lord from time to time',
        'other': 'they',
      },
      name: 'activityDescription',
      desc: 'activity title',
      args: [activity],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'tl'),
      Locale.fromSubtags(languageCode: 'uk'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
