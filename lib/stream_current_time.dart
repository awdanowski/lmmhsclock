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
  DateTime(2025, 4, 18, 7, 23),
  DateTime(2025, 4, 18, 8, 23),
  DateTime(2025, 4, 18, 9, 23),
  DateTime(2025, 4, 18, 10, 23),
  DateTime(2025, 4, 18, 11, 23),
  DateTime(2024, 10, 28, 9, 23),
  DateTime(2024, 10, 28, 12, 23),
  DateTime(2024, 11, 15, 14, 00),
  DateTime(2024, 10, 29, 5, 23),
  DateTime(2024, 10, 29, 7, 23),
  DateTime(2024, 10, 29, 8, 23),
  DateTime(2024, 10, 30, 9, 23),
  DateTime(2024, 10, 30, 12, 23),
  DateTime(2024, 10, 30, 14, 28),
  DateTime(2024, 11, 2, 12, 23),
  DateTime(2024, 12, 11, 9, 23),
  DateTime(2024, 12, 23, 10, 23),
  DateTime(2024, 12, 24, 12, 23),
];