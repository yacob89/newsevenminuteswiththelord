// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(activity) => "${Intl.select(activity, {
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
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Calling on the Name of the Lord',
            'praying': 'Praying',
            'prayReading': 'Pray Reading',
            'confession': 'Confession',
            'consecration': 'Consecration',
            'thanksgiving': 'Thanksgiving',
            'petition': 'Petition',
            'end': 'End',
            'other': 'they',
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "activityDescription": m0,
        "activityTitle": m1,
        "appName":
            MessageLookupByLibrary.simpleMessage("7 Minutes With The Lord"),
        "configuration": MessageLookupByLibrary.simpleMessage("Config"),
        "exit": MessageLookupByLibrary.simpleMessage("Exit"),
        "start": MessageLookupByLibrary.simpleMessage("Start!")
      };
}
