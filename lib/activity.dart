import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';
import "logic.dart";
import "main.dart";
import 'generated/l10n.dart'; // Import generated localization class
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  Timer? _timer;
  int _secondsRemaining = defaultCallingTime;
  var activityName = ActivityStep.calling;
  String activityTitle = callingName;
  String activityDescription = callingDescription;
  bool filledSelected = false;
  bool timerPaused = false;
  final audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _startTimer();
    showAppOverlay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void showAppOverlay() async {
    // double screenWidth = MediaQuery.of(context).size.width;
    // int overlayWidth = (screenWidth * 0.75).round();
    final status = await FlutterOverlayWindow.isPermissionGranted();
    if (status) {
      if (await FlutterOverlayWindow.isActive()) return;
      await FlutterOverlayWindow.showOverlay(
        enableDrag: true,
        overlayTitle: "X-SLAYER",
        overlayContent: 'Overlay Enabled',
        flag: OverlayFlag.defaultFlag,
        visibility: NotificationVisibility.visibilityPublic,
        positionGravity: PositionGravity.auto,
        height: 500,
        width: 800,
      );
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      FlutterOverlayWindow.shareData("$_secondsRemaining^$activityTitle");
      if (_secondsRemaining <= 0) {
        audioPlayer
            .play(AssetSource('sounds/mixkit-alert-quick-chime-766.wav'));
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.calling) {
        setState(() {
          _secondsRemaining = defaultPrayingTime;
          activityTitle = prayingName;
          activityName = ActivityStep.praying;
          activityDescription = prayingDescription;
          showNotification(activityTitle, "$defaultPrayingTime second");
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.praying) {
        setState(() {
          _secondsRemaining = defaultPrayReadingTime;
          activityTitle = prayReadingName;
          activityName = ActivityStep.prayreading;
          activityDescription = prayReadingDescription;
          showNotification(activityTitle, "$defaultPrayingTime second");
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.prayreading) {
        setState(() {
          _secondsRemaining = defaultConfessionTime;
          activityTitle = confessionName;
          activityName = ActivityStep.confession;
          activityDescription = confessionDescription;
          showNotification(activityTitle, "$defaultPrayingTime second");
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.confession) {
        setState(() {
          _secondsRemaining = defaultConsecrationTime;
          activityTitle = consecrationName;
          activityName = ActivityStep.consecration;
          activityDescription = consecrationDescription;
          showNotification(activityTitle, "$defaultPrayingTime second");
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.consecration) {
        setState(() {
          _secondsRemaining = defaultThanksgivingTime;
          activityTitle = thanksgivingName;
          activityName = ActivityStep.thanksgiving;
          activityDescription = thanksgivingDescription;
          showNotification(activityTitle, "$defaultPrayingTime second");
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.thanksgiving) {
        setState(() {
          _secondsRemaining = defaultPetitionTime;
          activityTitle = petitionName;
          activityName = ActivityStep.petition;
          activityDescription = petitionDescription;
          showNotification(activityTitle, "$defaultPrayingTime second");
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.petition) {
        setState(() {
          _secondsRemaining = defaultEndingTime;
          activityTitle = endingName;
          activityName = ActivityStep.ending;
          activityDescription = endingDescription;
          showNotification(activityTitle, "$defaultPrayingTime second");
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.ending) {
        _timer?.cancel();
        return;
      }
      if (!timerPaused) {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  void rewindActivity() {
    switch (activityName) {
      case ActivityStep.praying:
        setState(() {
          _secondsRemaining = defaultCallingTime;
          activityTitle = callingName;
          activityName = ActivityStep.calling;
          activityDescription = callingDescription;
        });
        break;
      case ActivityStep.prayreading:
        setState(() {
          _secondsRemaining = defaultPrayingTime;
          activityTitle = prayingName;
          activityName = ActivityStep.praying;
          activityDescription = prayingDescription;
        });
        break;
      case ActivityStep.confession:
        setState(() {
          _secondsRemaining = defaultPrayReadingTime;
          activityTitle = prayReadingName;
          activityName = ActivityStep.prayreading;
          activityDescription = prayReadingDescription;
        });
        break;
      case ActivityStep.consecration:
        setState(() {
          _secondsRemaining = defaultConfessionTime;
          activityTitle = confessionName;
          activityName = ActivityStep.confession;
          activityDescription = confessionDescription;
        });
        break;
      case ActivityStep.thanksgiving:
        setState(() {
          _secondsRemaining = defaultConsecrationTime;
          activityTitle = consecrationName;
          activityName = ActivityStep.consecration;
          activityDescription = consecrationDescription;
        });
        break;
      case ActivityStep.petition:
        setState(() {
          _secondsRemaining = defaultThanksgivingTime;
          activityTitle = thanksgivingName;
          activityName = ActivityStep.thanksgiving;
          activityDescription = thanksgivingDescription;
        });
        break;
      default:
    }
  }

  void forwardActivity() {
    switch (activityName) {
      case ActivityStep.calling:
        setState(() {
          _secondsRemaining = defaultPrayingTime;
          activityTitle = prayingName;
          activityName = ActivityStep.praying;
          activityDescription = prayingDescription;
        });
        break;
      case ActivityStep.praying:
        setState(() {
          _secondsRemaining = defaultPrayReadingTime;
          activityTitle = prayReadingName;
          activityName = ActivityStep.prayreading;
          activityDescription = prayReadingDescription;
        });
        break;
      case ActivityStep.prayreading:
        setState(() {
          _secondsRemaining = defaultConfessionTime;
          activityTitle = confessionName;
          activityName = ActivityStep.confession;
          activityDescription = confessionDescription;
        });
        break;
      case ActivityStep.confession:
        setState(() {
          _secondsRemaining = defaultConsecrationTime;
          activityTitle = consecrationName;
          activityName = ActivityStep.consecration;
          activityDescription = consecrationDescription;
        });
        break;
      case ActivityStep.consecration:
        setState(() {
          _secondsRemaining = defaultThanksgivingTime;
          activityTitle = thanksgivingName;
          activityName = ActivityStep.thanksgiving;
          activityDescription = thanksgivingDescription;
        });
        break;
      case ActivityStep.thanksgiving:
        setState(() {
          _secondsRemaining = defaultPetitionTime;
          activityTitle = petitionName;
          activityName = ActivityStep.petition;
          activityDescription = petitionDescription;
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(localizations.activityTitle(activityTitle)),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(40.0),
                  alignment: Alignment.center,
                  child: Text(
                    localizations.activityDescription(activityTitle),
                    textAlign: TextAlign.center,
                  )),
              Text(
                  "${(_secondsRemaining ~/ 60).toString().padLeft(2, '0')} : ${(_secondsRemaining % 60).toString().padLeft(2, '0')}",
                  style: Theme.of(context).textTheme.bodyLarge),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton.filled(
                    isSelected: false,
                    icon: const Icon(Icons.fast_rewind_outlined),
                    onPressed: () {
                      rewindActivity();
                    },
                  ),
                  const SizedBox(width: 10),
                  IconButton.filled(
                    isSelected: filledSelected,
                    icon: const Icon(Icons.pause_outlined),
                    selectedIcon: const Icon(Icons.play_arrow_outlined),
                    onPressed: () {
                      setState(() {
                        filledSelected = !filledSelected;
                      });
                      if (!timerPaused) {
                        setState(() {
                          timerPaused = true;
                        });
                      } else {
                        setState(() {
                          timerPaused = false;
                        });
                      }
                    },
                  ),
                  const SizedBox(width: 10),
                  IconButton.filled(
                    isSelected: false,
                    icon: const Icon(Icons.fast_forward_outlined),
                    onPressed: () {
                      forwardActivity();
                    },
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  // Pop the current route from the navigator stack.
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
            ],
          ),
        ));
  }
}
