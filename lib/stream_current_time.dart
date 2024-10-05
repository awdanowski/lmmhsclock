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
