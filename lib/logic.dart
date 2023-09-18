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
int defaultPrayingTime = 5; //60;
int defaultPrayReadingTime = 5; //150;
int defaultConfessionTime = 5; //60;
int defaultConsecrationTime = 5; //30;
int defaultThanksgivingTime = 5; //30;
int defaultPetitionTime = 5; //60;

String callingName = "Calling";
String prayingName = "Praying";
String prayReadingName = "Pray Reading";
String confessionName = "Confession";
String consecrationName = "Consecration";
String thanksgivingName = "Thanksgiving";
String petitionName = "Petition";

String callingDescription =
    "Calling on the Name of the Lord to set our mind on the spirit – 1 Cor.12:3; Rom. 8:6; 10:12-13";
String prayingDescription =
    "Opening our heart, softening our heart and emptying ourselves. Telling Him that we love Him – 2 Cor. 3:16; Psa. 62:8";
String prayReadingDescription =
    "Using our exercised spirit to pray over a verse or two. Turning the verses into a personal prayer – Eph. 6:17-18; 2 Tim. 3:16";
String confessionDescription =
    "Confessing the sins and offenses on our conscience and removing all blockages to fellowship. Asking for forgiveness and cleansing – 1 John 1:7, 9; Psa. 66:18; Isa. 59:1-2";
String consecrationDescription =
    "Presenting ourselves to the Lord afresh, giving Him the full ground in us – Rom. 12:1-2; 6:13,19; Mark 12:30";
String thanksgivingDescription =
    "Giving thanks for all things; for all the persons, situations and things in your life and praising Him – Eph. 5:20; 1 Thes. 5:18";
String petitionDescription =
    "Asking the Lord for needs, growth and persons that need salvation – 1 Tim. 2:1: Eph. 6:18; Matt. 7:7; Psa. 143:8";
String endingDescription = "Continue to contact The Lord from time to time.";
