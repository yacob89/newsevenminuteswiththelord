// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'Den Namen des Herrn anrufen um unser Verstand auf den Geist zu setzen - 1.Kor 12:3; Röm. 8:6; 10:12-13',
            'praying':
                'Unser Herz öffnen, es weichmachen und unser sein entleeren. Sag Ihm dass, wir Ihn lieben. - 2. Kor 3:16; Ps. 62:8',
            'prayReading':
                'Benutz unseren geübten Geist um über einen Vers oder zwei Verse zu beten. Wende diese Verse ins persönliche Gebet an. - Eph. 6:17-18; 2.Tim 3:16',
            'confession':
                'Die Sünden und Verstöße in unser Gewissen bekennen um alle Hindernisse zu einer Gemeinschaft zu beseitigen. Bitten um eine Vergebung und Reinigung. - 1.Joh 1:7, 9; Ps. 66:18; Jes. 59:1-2',
            'consecration':
                'Sich dem Herrn erneut hingeben, Ihm den ganzen Boden in unser Sein hingeben. - Röm. 12:1-2; 6:13,19; Mk. 12:30',
            'thanksgiving':
                'Sag Dank im allen Dingen; für alle Personen, Situationen und Dingen in deinem Leben und loben Ihn. - Eph. 5:20; 1.Thes 5:18',
            'petition':
                'Bittet dem Herrn um deine Bedürfnisse, deinen Wachstum und um Personen, die eine Errettung brauchen. - 1.Tim. 2:1: Eph. 6:18; Mt. 7:7; Ps. 143:8',
            'end': 'End',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Den Namen des Herrn anrufen',
            'praying': 'Beten',
            'prayReading': 'Betenlesen',
            'confession': 'Sünden bekennen',
            'consecration': 'Sich hingeben',
            'thanksgiving': 'Danksagung',
            'petition': 'Fürbitte',
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
