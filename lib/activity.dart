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

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining <= 0 && activityName == ActivityStep.calling) {
        _secondsRemaining = defaultPrayingTime;
        activityTitle = prayingName;
        activityName = ActivityStep.praying;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.praying) {
        _secondsRemaining = defaultPrayReadingTime;
        activityTitle = prayReadingName;
        activityName = ActivityStep.prayreading;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.prayreading) {
        _secondsRemaining = defaultConfessionTime;
        activityTitle = confessionName;
        activityName = ActivityStep.confession;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.confession) {
        _secondsRemaining = defaultConsecrationTime;
        activityTitle = consecrationName;
        activityName = ActivityStep.consecration;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.consecration) {
        _secondsRemaining = defaultThanksgivingTime;
        activityTitle = thanksgivingName;
        activityName = ActivityStep.thanksgiving;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.thanksgiving) {
        _secondsRemaining = defaultPetitionTime;
        activityTitle = petitionName;
        activityName = ActivityStep.petition;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.petition) {
        _timer?.cancel();
        activityTitle = "Seven Minutes With The Lord";
        activityName = ActivityStep.ending;
        return;
      }

      _secondsRemaining--;
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
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
              Text("${_secondsRemaining ~/ 60} : ${_secondsRemaining % 60}",
                  style: Theme.of(context).textTheme.titleLarge),
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
