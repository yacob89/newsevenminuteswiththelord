// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'Призывать имя Господа, чтобы обратить свой разум к нашему духу - 1Кор 12:3; Рим. 8:6; 10:12-13',
            'praying':
                'Открывать, смягчать своё сердце и опустошать себя - 2Кор. 3:16; Пс. 62:8',
            'prayReading':
                'Использовать свой дух, чтобы молиться одним или двумя стихами. Обращать стихи в личную молитву - Эф. 6:17-18; 2Тим. 3:16',
            'confession':
                'Исповедовать грехи и проступки на нашей совести и удалять все преграды для общения. Просить и прощении и очищении - 1Ин. 1:7, 9;Пс. 66:18; Ис. 59:1-2',
            'consecration':
                'По-свежему предоставить себя Господу, давая Ему полное основание в нас - Рим. 12:1-2; 6:13,19; Мк. 12:30',
            'thanksgiving':
                'Воздавать благодарение за всё: за всех людей, все обстоятельства и все вещи в нашей жизни, восхвалять Его - Ef. 5:20; 1 Ts. 5:18',
            'petition':
                'Просить Господа в отношении нужд, роста и людей, которые нуждаются в спасении - 1Тим. 2:1; Эф. 6:18; Мф. 7:7; Пс. 143:8',
            'end': 'Конец',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Призывание',
            'praying': 'Молитва',
            'prayReading': 'Молитвочтение',
            'confession': 'Исповедь',
            'consecration': 'Посвящение',
            'thanksgiving': 'Благодарение',
            'petition': 'Прошение',
            'end': 'Конец',
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
