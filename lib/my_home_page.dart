import 'package:flutter/material.dart';
import 'activity.dart';
import 'generated/l10n.dart'; // Import generated files
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedLanguageCode = "en"; // Default language

  @override
  void initState() {
    super.initState();
    loadLanguagePreference();
  }

  final Map<String, String> _languages = {
    'en': 'English',
    'ar': 'عربي',
    'zt': '中文(繁體)',
    'zh': '中文(简体)',
    'de': 'Deutsch',
    'id': 'Bahasa Indonesia',
    'ko': '한국어',
    'pt': 'Portuguese',
    'es': 'Español',
    'ru': 'русский язык',
    'uk': 'українська мова',
    'tl': 'Tagalog',
  }; // Map of language codes to language names

  void _changeLanguage(String langCode) {
    Locale newLocale = Locale(langCode, '');
    S.load(newLocale); // Load the new locale
    setState(() {
      _selectedLanguageCode = langCode;
    });
  }

  Future<void> saveLanguagePreference(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', languageCode);
  }

  Future<void> loadLanguagePreference() async {
    final prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('language_code') ??
        "en"; // Default to English if not set
    // Since we're inside an async method, use `setState` to update the UI
    setState(() {
      _selectedLanguageCode = languageCode;
    });
    // If you want to apply the loaded locale immediately, you might need to do it here as well
    _changeLanguage(languageCode);
  }

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context); // Get localization instance

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                value: _selectedLanguageCode,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  _changeLanguage(newValue!);
                  saveLanguagePreference(newValue);
                },
                items:
                    _languages.entries.map<DropdownMenuItem<String>>((entry) {
                  return DropdownMenuItem<String>(
                    value: entry.key,
                    child: Text(entry.value),
                  );
                }).toList(),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Activity(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15), // Padding inside the button
                    shape: RoundedRectangleBorder(
                      // Rounded corners
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5, // Shadow depth
                  ),
                  child: Text(localizations.start,
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
