import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class TextFieldOverlay extends StatefulWidget {
  const TextFieldOverlay({Key? key}) : super(key: key);

  @override
  State<TextFieldOverlay> createState() => _TextFieldOverlayState();
}

class _TextFieldOverlayState extends State<TextFieldOverlay> {
  String activityTitle = "";
  int secondsRemaining = 0;

  @override
  void initState() {
    super.initState();
    FlutterOverlayWindow.overlayListener.listen((event) {
      log("$event");
      setState(() {
        activityTitle = event.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) async {
        if (hasFocus) {
          await FlutterOverlayWindow.updateFlag(OverlayFlag.focusPointer);
        } else {
          await FlutterOverlayWindow.updateFlag(OverlayFlag.defaultFlag);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: activityTitle),
                ),
                const SizedBox(height: 50.0),
                TextButton(
                  onPressed: () {
                    FlutterOverlayWindow.closeOverlay();
                  },
                  child: const Text("Close Overlay"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
