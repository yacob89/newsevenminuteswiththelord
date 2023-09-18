class CounterLogic {
  int _counter = 0;

  void incrementCounter() {
    _counter++;
  }

  int getCounter() {
    return _counter;
  }
}

enum Step {
  calling,
  praying,
  prayreading,
  confession,
  consecration,
  thanksgiving,
  petition
}

int defaultCallingTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
int defaultPrayingTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
int defaultPrayReadingTime = DateTime.now().millisecondsSinceEpoch + 1000 * 150;
int defaultConfessionTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
int defaultConsecrationTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
int defaultThanksgivingTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
int defaultPetitionTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
