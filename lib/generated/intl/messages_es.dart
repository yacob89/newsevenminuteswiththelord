// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'Invocar el nombre del Señor para poner nuestra mente en el espíritu - 1 Co.12:3; Rom. 8:6; 10:12-13',
            'praying':
                'Abrir nuestro corazón, suavizar nuestro corazón y vaciarnos a nosotros mismos. Decirle que lo amamos a Él - 2 Co. 3:16; Sal. 62:8',
            'prayReading':
                'Usar nuestro espíritu ejercitado para orar uno o dos versículos. Tornar los versículos en una oración personal - Ef. 6:17-18; 2 Tim. 3:16',
            'confession':
                'Confesar los pecados y las ofensas que están en nuestra conciencia y quitar todo lo que obstruye la comunión. Pedir perdón y lavamiento - 1 Jn 1:7, 9; Sal. 66:18; Is. 59:1-2',
            'consecration':
                'Presentarnos al Señor de manera fresca, dándole todo el terreno en nosotros - Rom. 12:1-2; 6:13,19; Marc 12:30',
            'thanksgiving':
                'Dar gracias por todas las cosas, por todas las personas, situaciones y cosas en su vida y alabarlo a Él - Ef. 5:20; 1 Tes. 5:18',
            'petition':
                'Pedirle al Señor por las necesidades, el crecimiento y las personas que necesitan salvación - 1 Tim. 2:1: Ef. 6:18; Mat. 7:7; Sal. 143:8',
            'end': 'Fin',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Invocar el nombre del Señor',
            'praying': 'Orar',
            'prayReading': 'Orar-leer',
            'confession': 'Confesión',
            'consecration': 'Consagración',
            'thanksgiving': 'Dar gracias',
            'petition': 'Petición',
            'end': 'Fin',
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
