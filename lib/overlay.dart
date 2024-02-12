import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'generated/l10n.dart'; // Import generated localization class
import 'package:shared_preferences/shared_preferences.dart';

class TextFieldOverlay extends StatefulWidget {
  const TextFieldOverlay({Key? key}) : super(key: key);

  @override
  State<TextFieldOverlay> createState() => _TextFieldOverlayState();
}

class _TextFieldOverlayState extends State<TextFieldOverlay> {
  String activityTitle = "Loading...";
  String secondsRemaining = "00";

  @override
  void initState() {
    super.initState();
    loadLanguagePreference();
    FlutterOverlayWindow.overlayListener.listen((event) {
      log("$event");

      // Split the string into a list of two elements using '^' as the delimiter
      List<String> parts = event.split("^");

      // Assuming the format is always correct and contains exactly one '^'
      String numberPart = parts[0];
      String textPart = parts[1];
      setState(() {
        secondsRemaining = numberPart;
        activityTitle = textPart;
      });
    });
  }

  Future<void> loadLanguagePreference() async {
    final prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('language_code') ??
        "en"; // Default to English if not set
    // If you want to apply the loaded locale immediately, you might need to do it here as well
    _changeLanguage(languageCode);
  }

  void _changeLanguage(String langCode) {
    Locale newLocale = Locale(langCode, '');
    S.load(newLocale); // Load the new locale
  }

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    return Focus(
      onFocusChange: (hasFocus) async {
        if (hasFocus) {
          await FlutterOverlayWindow.updateFlag(OverlayFlag.focusPointer);
        } else {
          await FlutterOverlayWindow.updateFlag(OverlayFlag.defaultFlag);
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(
              255, 160, 74, 175), // Container background color
          borderRadius: BorderRadius.circular(30), // Border radius
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color with opacity
              blurRadius: 10.0, // Soften the shadow
              spreadRadius: 0.0, // Extend the shadow
              offset: const Offset(
                  5.0, 5.0), // Horizontal and vertical offset of shadow
            ),
          ],
        ),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 160, 74, 175),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      localizations.activityTitle(activityTitle),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Text(
                    secondsRemaining,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      FlutterOverlayWindow.closeOverlay();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, // Background color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Close",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
