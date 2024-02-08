// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zt locale. All the
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
  String get localeName => 'zt';

  static String m0(activity) => "${Intl.select(activity, {
            'calling': '藉着呼求主名，將心思置於靈 - 林前十二:3; 羅八:6; 十:12-13',
            'praying': '敞開我們的心，輭化我們的心並倒空自己，告訴祂: 主阿！我愛你 -林後三:16; 詩六十二:8',
            'prayReading': '用我們操練過的靈禱讀一至二節, 把所讀的經節化爲自己個人的禱告 - 弗六:17-18; 提後三:16',
            'confession':
                '憑着良心承認自己的罪與過犯，除去一切與主交通的攔阻，求主赦免並潔凈 - 約壹一:7, 9; 詩六十六18；賽五十九1-2',
            'consecration':
                '更新自己的奉獻，並使祂在我們裏面得着完全的地位 - 羅十二:1-2; 六:13,19; 可十二:30',
            'thanksgiving': '爲着你在曰常生活中的一切人，事，物，感謝祂並讚美祂 - 弗五:20; 帖前五:18',
            'petition':
                '爲着自己的需要，生命的長大，以及别人的得救，向主祈求 - 提前二:1: 弗六:18; 太七:7; 詩一百四十三:8',
            'end': '結束',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': '呼求主名',
            'praying': '禱告',
            'prayReading': '禱讀',
            'confession': '認罪',
            'consecration': '奉獻',
            'thanksgiving': '感謝',
            'petition': '祈求',
            'end': '結束',
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
