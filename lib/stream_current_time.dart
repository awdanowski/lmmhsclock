Stream<DateTime> currentTimeStream() {
  return Stream<DateTime>.periodic(
    Duration(seconds: 1),
    (count) {
      DateTime now = DateTime.now();
      return now;
      // return "${now.hour}:${now.minute}:${now.second}";
    },
  );
}

Stream<DateTime> currentTimeStreamTester() {
  return Stream<DateTime>.periodic(
    Duration(seconds: 5),
    (count) {
      if (count < dateTimeList.length) {
        return dateTimeList[count];
      }
      return DateTime.now();
    },
  ).take(dateTimeList.length);
}

List<DateTime> dateTimeList = [
  DateTime.now(),
  DateTime(2024, 11, 11, 12, 23),
  DateTime(2024, 10, 28, 9, 23),
  DateTime(2024, 10, 28, 12, 23),
  DateTime(2024, 10, 28, 14, 43),
  DateTime(2024, 10, 30, 5, 23),
  DateTime(2024, 10, 30, 9, 23),
  DateTime(2024, 10, 30, 12, 23),
  DateTime(2024, 10, 30, 14, 28),
  DateTime(2024, 11, 2, 12, 23),
  DateTime(2024, 11, 11, 12, 23),
];