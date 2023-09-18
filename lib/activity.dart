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
        activityDescription = prayingDescription;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.praying) {
        _secondsRemaining = defaultPrayReadingTime;
        activityTitle = prayReadingName;
        activityName = ActivityStep.prayreading;
        activityDescription = prayReadingDescription;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.prayreading) {
        _secondsRemaining = defaultConfessionTime;
        activityTitle = confessionName;
        activityName = ActivityStep.confession;
        activityDescription = confessionDescription;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.confession) {
        _secondsRemaining = defaultConsecrationTime;
        activityTitle = consecrationName;
        activityName = ActivityStep.consecration;
        activityDescription = consecrationDescription;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.consecration) {
        _secondsRemaining = defaultThanksgivingTime;
        activityTitle = thanksgivingName;
        activityName = ActivityStep.thanksgiving;
        activityDescription = thanksgivingDescription;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.thanksgiving) {
        _secondsRemaining = defaultPetitionTime;
        activityTitle = petitionName;
        activityName = ActivityStep.petition;
        activityDescription = petitionDescription;
        return;
      }
      if (_secondsRemaining <= 0 && activityName == ActivityStep.petition) {
        activityTitle = "Seven Minutes With The Lord";
        activityName = ActivityStep.ending;
        activityDescription = endingDescription;
        _timer?.cancel();
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
