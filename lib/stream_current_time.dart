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
  //DateTime.now(),
  //DateTime(2024, 11, 11, 7, 23),
  DateTime(2024, 11, 6, 9, 00),
  DateTime(2024, 11, 6, 11, 23),
  DateTime(2024, 11, 6, 12, 23),
  DateTime(2024, 11, 6, 13, 23),
  DateTime(2024, 11, 6, 14, 23),
  DateTime(2024, 11, 6, 12, 15),
  // DateTime(2024, 10, 31, 9, 23),
  // DateTime(2024, 10, 31, 10, 00),
  // DateTime(2024, 10, 31, 11, 23),
  // DateTime(2024, 10, 31, 12, 23),
  // DateTime(2024, 10, 31, 13, 23),
  // DateTime(2024, 10, 31, 14, 23),
  // DateTime(2024, 10, 31, 15, 23),
];