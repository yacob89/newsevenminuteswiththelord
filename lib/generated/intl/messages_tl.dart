// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tl locale. All the
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
  String get localeName => 'tl';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'Tumatawag sa Pangalan ng Panginoon upang ilagak ang ating isip sa espiritu - 1Cor 12:3; Roma 8:6; 10:12-13',
            'praying':
                'Binubuksan ang ating puso, pinalalambot ang ating puso at binabasyo ang ating sarili.  Sinasabi sa Kanya na iniibig natin Siya - 2Cor 3:16; Awit 62:8',
            'prayReading':
                'Ginagamit ang ating naensayong espiritu upang manalangin hinggil sa isa o dalawang bersikulo. Ginagawang personal na panalangin ang mga bersikulo - Efe 6:17-18; 2Tm. 3:16',
            'confession':
                'Ipinapahayag ang mga kasalanan at mga pagsalangsang sa ating budhi at inaalis ang lahat ng hadlang sa salamuha. Humihingi ng kapatawaran at paglilinis - 1Juan 1:7, 9; Awit 66:18; Isa 59:1-2',
            'consecration':
                'Muling inihahandog ang ating sarili sa Panginoon, ibinibigay sa Kanya ang buong puwang sa loob natin - Roma 12:1-2; 6:13,19; Marcos 12:30',
            'thanksgiving':
                'Nagpapasalamat para sa lahat ng bagay, para sa lahat ng tao, mga sitwasyon at mga bagay sa iyong buhay at nagpupuri sa Kanya - Efe 5:20; 1Tes 5:18',
            'petition':
                'Humihiling sa Panginoon para sa mga pangangailangan, paglago at mga tao na nangangailangan ng kaligtasan - 1Tim 2:1; Efe 6:18; Mat 7:7; Awit 143:8',
            'end': 'Wakas',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Tumatawag sa Pangalan ng Panginoon',
            'praying': 'Nananalangin',
            'prayReading': 'Pagbabasa-dalangin',
            'confession': 'Nagpapahayag ng mga Kasalanan',
            'consecration': 'Pag-aalay',
            'thanksgiving': 'Pasasalamat',
            'petition': 'Kahilingan',
            'end': 'Wakas',
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
