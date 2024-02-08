// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a id locale. All the
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
  String get localeName => 'id';

  static String m0(activity) => "${Intl.select(activity, {
            'calling':
                'Berseru kepada nama Tuhan untuk mengarahkan pikiran kita pada roh - 1 Korintus 12:3; Roma 8:6; 10:12-13',
            'praying':
                'Membuka hati kita, melembutkan hati kita, dan mengosongkan diri kita. Memberitahu Dia bahwa kita mengasihi Dia - 2 Korintus 3:16; Mazmur 62:8',
            'prayReading':
                'Memakai roh kita mendoakan 1-2 ayat. Mengubah ayat-ayat itu menjadi doa pribadi kita - Efesus 6:17-18; 2 Timotius 3:16',
            'confession':
                'Mengakui dosa-dosa dan pelanggaran-pelanggaran yang ada pada hati nurani kita dan menyingkirkan semua penghalang persekutuan. Memohon pengampunan dan pembasuhan - 1 Yohanes 1:7, 9; Mazmur 66:18; Yesaya 59:1-2',
            'consecration':
                'Mempersembahkan diri kita kepada Tuhan dengan segar, memberi Dia landasan di dalam seluruh diri kita - Roma 12:1-2; 6:13,19; Markus 12:30',
            'thanksgiving':
                'Mengucap syukur untuk segala sesuatu; untuk semua orang, semua situasi, dan semua hal di dalam hidup Anda dan memuji Dia - Efesus 5:20; 1 Tesalonika 5:18',
            'petition':
                'Memohon kepada Tuhan untuk semua kebutuhan kita, pertumbuhan kita, dan orang-orang yang memerlukan keselamatan - 1 Timotius 2:1: Efesus 6:18; Matius 7:7; Mazmur 143:8',
            'other': 'they',
          })}";

  static String m1(activity) => "${Intl.select(activity, {
            'calling': 'Berseru kepada nama Tuhan',
            'praying': 'Berdoa',
            'prayReading': 'Doa Baca',
            'confession': 'Mengaku Dosa',
            'consecration': 'Konsikrasi',
            'thanksgiving': 'Mengucap Syukur',
            'petition': 'Doa Permohonan',
            'end': 'Lanjutkan untuk mengontak Tuhan dari waktu ke waktu',
            'other': 'they',
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "activityDescription": m0,
        "activityTitle": m1,
        "appName":
            MessageLookupByLibrary.simpleMessage("7 Menit Bersama Tuhan"),
        "configuration": MessageLookupByLibrary.simpleMessage("Pengaturan"),
        "exit": MessageLookupByLibrary.simpleMessage("Keluar"),
        "start": MessageLookupByLibrary.simpleMessage("Mulai!")
      };
}
