import 'package:flutter/material.dart';

import 'build_dynamic_school_day.dart';

Column buildDisplay(DateTime rightNow) {
  // int day = 1;
  final day = rightNow.weekday;
  bool startOfDay = rightNow
      .isBefore(DateTime(rightNow.year, rightNow.month, rightNow.day, 6, 45));
  bool endOfDay = rightNow
      .isAfter(DateTime(rightNow.year, rightNow.month, rightNow.day, 14, 24));

  switch (day) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      if (startOfDay) {
        return staticStartOfDay(day);
      } else if (endOfDay) {
        return staticEndOfDay(day);
      } else {
        return dynamicSchoolDay(day, rightNow);
      }
    case 6:
    case 7:
      return staticWeekend();
    default:
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Unknown day!', style: TextStyle(fontSize: 24)),
          Icon(Icons.error, size: 50),
        ],
      );
  }
}

Column staticStartOfDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("It's too early!", style: TextStyle(fontSize: 24)),
      Text("Go back to bed.", style: TextStyle(fontSize: 24))
    ],
  );
}

Column staticEndOfDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("School is over!", style: TextStyle(fontSize: 24)),
      Text("Go home.", style: TextStyle(fontSize: 24))
    ],
  );
}

Column staticWeekend() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("There's no school today!", style: TextStyle(fontSize: 24)),
    ],
  );
}
