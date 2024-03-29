import 'package:flutter/material.dart';
import 'my_home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart'; // Import generated localization class
import "overlay.dart";
import "change_notifier.dart";
import 'package:provider/provider.dart';

BuildContext? buildContext;

final ThemeData customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
    ),
    // TRY THIS: Change one of the GoogleFonts
    //           to "lato", "poppins", or "lora".
    //           The title uses "titleLarge"
    //           and the middle text uses "bodyMedium".
    bodyLarge: GoogleFonts.roboto(fontSize: 30, color: Colors.deepPurple),
    bodyMedium: GoogleFonts.roboto(fontSize: 14),
    bodySmall: GoogleFonts.roboto(fontSize: 10),
    displaySmall: GoogleFonts.roboto(),
  ),
);

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() {
  runApp(const MyApp());
  requestNotificationPermission();
  initializeNotifications();
}

// overlay entry point
@pragma("vm:entry-point")
void overlayMain() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const TextFieldOverlay(),
    localizationsDelegates: const [
      S.delegate, // Add the generated delegate
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
  ));
}

void initializeNotifications() async {
  // Define settings for Android
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher'); // App icon

  // Define initialization settings for each platform
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );
}

Future<void> requestNotificationPermission() async {
  // var notificationPermission = await Permission.notification.status;
  var systemAlertPermission = await Permission.systemAlertWindow.status;
  // if (notificationPermission.isDenied) {
  //   // We didn't ask for permission yet or the permission has been denied before but not permanently.
  //   Map<Permission, PermissionStatus> statuses = await [
  //     Permission.notification,
  //   ].request();
  //   print(statuses[
  //       Permission.notification]); // It should print PermissionStatus.granted
  // }
  if (systemAlertPermission.isDenied) {
    // We didn't ask for permission yet or the permission has been denied before but not permanently.
    Map<Permission, PermissionStatus> statuses = await [
      Permission.systemAlertWindow,
    ].request();
    print(statuses[
        Permission.notification]); // It should print PermissionStatus.granted
  }

  // if (notificationPermission.isPermanentlyDenied) {
  //   // The user opted to never again see the permission request dialog for this
  //   // app. The only way to change the permission's status now is to let the
  //   // user manually enable it in the system settings.
  //   openAppSettings();
  // }
}

Future<void> showNotification(
    String notificationTitle, String notificationBody) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'id_1', // Unique ID of the channel.
    'your channel name', // The name of the channel.
    channelDescription:
        'your channel description', // Description of the channel
    importance: Importance.high,
    priority: Priority.low,
    showWhen: false,
  );
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0, // Notification ID
    notificationTitle,
    notificationBody,
    platformChannelSpecifics,
    payload: 'item x',
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    return ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      child: Consumer<LocaleProvider>(
        builder: (context, localeProvider, child) {
          return MaterialApp(
            title: 'Seven Minutes With The Lord',
            theme: customTheme,
            home: const MyHomePage(title: 'Seven Minutes With The Lord'),
            locale: localeProvider.locale,
            localizationsDelegates: const [
              S.delegate, // Add the generated delegate
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
