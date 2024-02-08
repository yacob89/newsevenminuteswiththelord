// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(activity) => "${Intl.select(activity, {
            'calling': '藉着呼求主名，将心思置於灵 - 林前十二:3; 罗八:6; 十:12-13',
            'praying': '敞开我们的心，软化我们的心并倒空自己，告诉祂：主阿！我爱你 - 林后三:16; 诗六十二:8',
            'prayReading': '用我们操练过的灵祷读一至二节，把所读的经节化为自己个人的祷告 - 弗六:17-18; 提后三:16',
            'confession':
                '凭着良心承认自己的罪与过犯，除去一切与主交通的拦阻，求主赦免并结净 - 约壹一:7, 9; 诗六十六:18; 赛五十九:1-2',
            'consecration':
                '更新自己的奉献，并使祂在我们里面得着完全的地位 - 罗十二:1-2; 六:13,19; 可十二:30',
            'thanksgiving': '为着你在日常生活中的一切人，事，物，感谢祂并赞美祂 - 弗五:20; 帖前五:18',
            'petition':
                '为着自己的需要，生命的长大，以及别人的得救，向主祈求 - 提前二:1: 弗六:18; 太七:7; 诗一百四十三:8',
            'end': '结束',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': '呼求主名',
            'praying': '祷告',
            'prayReading': '祷读',
            'confession': '认罪',
            'consecration': '奉献',
            'thanksgiving': '感谢',
            'petition': '祈求',
            'end': '结束',
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
