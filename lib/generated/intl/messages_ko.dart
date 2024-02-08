// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                '주의 이름을 불러 생각을 영으로 돌이킴&#8211; 고전12:3; 롬 8:6; 10:12&#8211;13',
            'praying':
                '마음을 열고 부드럽게하여 자신을 비우고 주님을 사랑한다고 말함 &#8211; 고후 3:16; 시62:8',
            'prayReading':
                '훈련된 영을 사용하여 기도로 한  두 구절을 취하고 개인적인 기도로 적용 &#8211; 엡 6:17&#8211;18; 딤후 3:16',
            'confession':
                '양심에서 죄들과 잘못을 자백하고 교통을 위해 모든 방해물을 제거하고 죄사함과 정결케함을 구함 &#8211; 요일 1:7, 9; 시 66:18; 사 59:1&#8211;2',
            'consecration':
                '우리를 점유하시도록 우리 자신을 주님께 다시 드림 &#8211; 롬 12:1&#8211;2; 6:13,19; 막 12:30',
            'thanksgiving':
                '모든 것, 모든 사람, 환경, 우리 생활의 모든 것에 감사와 찬양을 드리고 &#8211; 엡 5:20; 살전 5:18',
            'petition':
                '주님께 필요, 성장 그리고 구원이 필요한  사람을 구함 &#8211; 1 팀. 2:1: 엡 6:18; 마 7:7; 시 143:8',
            'end': '끝',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': '주님의 이름 부르기',
            'praying': '기도',
            'prayReading': '기도로 말씀 읽기',
            'confession': '자백',
            'consecration': '헌신',
            'thanksgiving': '감사',
            'petition': '간구',
            'end': '끝',
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
