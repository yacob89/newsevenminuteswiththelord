import 'package:flutter/material.dart';
import 'my_home_page.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
    // TRY THIS: Change one of the GoogleFonts
    //           to "lato", "poppins", or "lora".
    //           The title uses "titleLarge"
    //           and the middle text uses "bodyMedium".
    bodyLarge: GoogleFonts.roboto(
      fontSize: 30,
    ),
    bodyMedium: GoogleFonts.roboto(fontSize: 14),
    displaySmall: GoogleFonts.roboto(),
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seven Minutes With The Lord',
      theme: customTheme,
      home: const MyHomePage(title: 'Seven Minutes With The Lord'),
    );
  }
}
