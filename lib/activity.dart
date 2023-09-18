import 'package:flutter/material.dart';
import 'dart:async';
// import "logic.dart";

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  Timer? _timer;
  int _secondsRemaining = 60;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining <= 0) {
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
          title: const Text('Second Page'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_secondsRemaining seconds remaining'),
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
