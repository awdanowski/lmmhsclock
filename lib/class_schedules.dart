class Schedule {
  Schedule(
      {
        required this.hour,
        required this.minute,
        required this.firstCurrent,
        required this.firstNext,
        required this.firstDateTime,
        required this.secondCurrent,
        required this.secondNext,
        required this.secondDateTime,
        required this.thirdCurrent,
        required this.thirdNext,
        required this.thirdDateTime,
      });

  int hour;
  int minute;

  String firstCurrent;
  String firstNext;
  String firstDateTime;

  String secondCurrent;
  String secondNext;
  String secondDateTime;

  String thirdCurrent;
  String thirdNext;
  String thirdDateTime;
}