// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'الدعاء بإسم الرب لوضع ذهننا على الروح (١كو ٣:١٢، رو٦:٨، ١٠-١٣:١٢)',
            'praying':
                'فتح قلوبنا، تليين قلوبنا وتفريغ أنفسنا. أن نقول له بإننا نحبه - (٢كو ١٦:٣؛ مز ٨:٦٢)',
            'prayReading':
                'إستخدام روحنا المُمَرن لنصلي آية او إثنتان. تحويل الآيات إلى صلاة شخصية - (أف ١٧:٦-١٨؛ ٢تي ١٦:٣)',
            'confession':
                'الإعتراف بالخطايا والإساءات في ضميرنا ومحو كل الحواجز للشركة. سائل الرب الغفران والتطهير - (١ يو ١-٩:٧، مز ١٨:٦٦، إش ١:٥٩-٢)',
            'consecration':
                'نقدم نفوسنا للرب من جديد، ونعطيه المساحة التامة داخلنا- (رو ١:١٢-٢؛ ١٣:٦، ١٩؛ مر ٣٠:١٢)',
            'thanksgiving':
                'إعطاء شكر للرب من أجل كل الأشياء، من أجل كل الأشخاص، المواقف والأشياء في حياتك وسبحه - (أف ٢٠:٥ ؛ ١تس ١٨:٥)',
            'petition':
                'اسأل الرب الإحتياجات، النمو والأشخاص المحتاجين للخلاص - (١ تي ١:٢، أف ١٨:٦، مت ٧:٧، مز ٨:١٤٣)',
            'end': 'النهاية',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'الدعاء بإسم الرب',
            'praying': 'الصلاة',
            'prayReading': 'صلاة-القراءة',
            'confession': 'الإعتراف',
            'consecration': 'التكريس',
            'thanksgiving': 'الشُكر',
            'petition': 'التضرع',
            'end': 'النهاية',
            'other': 'they',
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "activityDescription": m0,
        "activityTitle": m1,
        "appName": MessageLookupByLibrary.simpleMessage("٧ دقائق مع الرب"),
        "configuration": MessageLookupByLibrary.simpleMessage("Config"),
        "exit": MessageLookupByLibrary.simpleMessage("Exit"),
        "start": MessageLookupByLibrary.simpleMessage("Start!")
      };
}
