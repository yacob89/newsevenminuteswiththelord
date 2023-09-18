class CounterLogic {
  int _counter = 0;

  void incrementCounter() {
    _counter++;
  }

  int getCounter() {
    return _counter;
  }
}

enum ActivityStep {
  calling,
  praying,
  prayreading,
  confession,
  consecration,
  thanksgiving,
  petition,
  ending
}

int defaultCallingTime = 30;
int defaultPrayingTime = 60;
int defaultPrayReadingTime = 150;
int defaultConfessionTime = 60;
int defaultConsecrationTime = 30;
int defaultThanksgivingTime = 30;
int defaultPetitionTime = 60;

String callingName = "Calling";
String prayingName = "Praying";
String prayReadingName = "Pray Reading";
String confessionName = "Confession";
String consecrationName = "Consecration";
String thanksgivingName = "Thanksgiving";
String petitionName = "Petition";
