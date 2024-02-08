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

int defaultCallingTime = 5; //30;
int defaultPrayingTime = 6; //60;
int defaultPrayReadingTime = 6; //150;
int defaultConfessionTime = 6; //60;
int defaultConsecrationTime = 6; //30;
int defaultThanksgivingTime = 6; //30;
int defaultPetitionTime = 6; //60;
int defaultEndingTime = 6; //60;

String callingName = "calling";
String prayingName = "praying";
String prayReadingName = "prayReading";
String confessionName = "confession";
String consecrationName = "consecration";
String thanksgivingName = "thanksgiving";
String petitionName = "petition";
String endingName = "end";

String callingDescription = "calling";
String prayingDescription = "praying";
String prayReadingDescription = "prayReading";
String confessionDescription = "confession";
String consecrationDescription = "consecration";
String thanksgivingDescription = "thanksgiving";
String petitionDescription = "petition";
String endingDescription = "end";
