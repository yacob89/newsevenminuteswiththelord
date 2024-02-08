// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'Прикликати Ім’я Господа для того, щоб повернути свій розум до духа - 1Кор 12:3; Рим. 8:6; 10:12-13',
            'praying':
                'Відкривати своє серце, зм’якшувати своє серце и спустошувати себе. Казати Йому, що ми любимо Його - 2Кор. 3:16; Пс. 62:8',
            'prayReading':
                'Використовувати наш вправний дух для того, щоб молитися одним або двома віршами. Повернути вірші на особисту молитву - Еф. 6:17-18; 2 Тим. 3:16',
            'confession':
                'Сповідати гріхи та кривди на нашій совісті та прибрати всі перепони для спілкування. Просити прощення і очищення - 1Івана 1:7, 9;Пс. 66:18; Ісая 59:1-2',
            'consecration':
                'Заново передати самих себе Господу, надаючи Йому повну підставу (щось робити) в нас. - Рим. 12:1-2; 6:13,19; Мк. 12:30',
            'thanksgiving':
                'Дякувати за все, за всіх людей, ситуації і за все у вашому житті й славити Його - Еф. 5:20; 1 Солунян 5:18',
            'petition':
                'Просити Господа за потреби, зростання та осіб, які потребують спасіння - 1Тим. 2:1; Еф. 6:18; Матвія 7:7; Пс. 143:8',
            'end': 'Кінець',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Прикликати Ім’я Господа',
            'praying': 'Молитва',
            'prayReading': 'Молитовне читання',
            'confession': 'Сповідь',
            'consecration': 'Посвячення',
            'thanksgiving': 'Подяка',
            'petition': 'Прохання',
            'end': 'Кінець',
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
