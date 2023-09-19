import 'package:flutter/material.dart';
import 'dart:async';
import "logic.dart";

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

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining <= 0 && activityName == ActivityStep.calling) {
        setState(() {
          _secondsRemaining = defaultPrayingTime;
          activityTitle = prayingName;
          activityName = ActivityStep.praying;
          activityDescription = prayingDescription;
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.praying) {
        setState(() {
          _secondsRemaining = defaultPrayReadingTime;
          activityTitle = prayReadingName;
          activityName = ActivityStep.prayreading;
          activityDescription = prayReadingDescription;
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.prayreading) {
        setState(() {
          _secondsRemaining = defaultConfessionTime;
          activityTitle = confessionName;
          activityName = ActivityStep.confession;
          activityDescription = confessionDescription;
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.confession) {
        setState(() {
          _secondsRemaining = defaultConsecrationTime;
          activityTitle = consecrationName;
          activityName = ActivityStep.consecration;
          activityDescription = consecrationDescription;
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.consecration) {
        setState(() {
          _secondsRemaining = defaultThanksgivingTime;
          activityTitle = thanksgivingName;
          activityName = ActivityStep.thanksgiving;
          activityDescription = thanksgivingDescription;
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.thanksgiving) {
        setState(() {
          _secondsRemaining = defaultPetitionTime;
          activityTitle = petitionName;
          activityName = ActivityStep.petition;
          activityDescription = petitionDescription;
        });
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.petition) {
        setState(() {
          _secondsRemaining = defaultEndingTime;
          activityTitle = endingName;
          activityName = ActivityStep.ending;
          activityDescription = endingDescription;
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
      //setState(() {});
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
    return Scaffold(
        appBar: AppBar(
          title: Text(activityTitle),
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
                    activityDescription,
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
