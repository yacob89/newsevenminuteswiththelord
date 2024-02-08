// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'Invocar o nome do Senhor para nos ajudar a colocar nossa mente no espírito - 1Co 12:3; Rm 8:6; 10:12-13',
            'praying':
                'Abrir o nosso coração, amolecê-lo e esvaziar-nos. Dizer-Lhe que O amamos - 2Co 3:16; Sl 62:8',
            'prayReading':
                'Usar nosso espírito exercitado para orar sobre um ou dois versículos. Transformar os versículos em uma oração pessoal - Ef 6:17-18; 2Tm. 3:16',
            'confession':
                'Confessar os pecados e ofensas em nossa consciência e remover todas as barreiras à comunhão. Pedir perdão e purificação - 1Jo 1:7, 9; Sl 66:18; Is 59:1-2',
            'consecration':
                'Apresentar-nos ao Senhor de modo fresco, dando-Lhe todo o terreno em nós - Rm 12:1-2; 6:13,19; Mc 12:30',
            'thanksgiving':
                'Dar graças por todas as coisas; por todas as pessoas, situações e coisas em sua vida e louvá-Lo - Ef 5:20; 1Ts 5:18',
            'petition':
                'Pedir ao Senhor por necessidades, crescimento e por pessoas que precisam de salvação - 1Tm 2:1; Ef 6:18; Mt 7:7; Sl 143:8',
            'end': 'Fim',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Invocar o nome do Senhor',
            'praying': 'Orar',
            'prayReading': 'Orar-ler',
            'confession': 'Confessar',
            'consecration': 'Consagrar',
            'thanksgiving': 'Agradecer',
            'petition': 'Pedir',
            'end': 'Fim',
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
