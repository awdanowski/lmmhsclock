import 'package:flutter/material.dart';

import 'class_schedules.dart';

Schedule mondaySchedule(DateTime rightNow) {
  for (Schedule item in mondayList) {
    DateTime testTime = DateTime(rightNow.year, rightNow.month, rightNow.day, item.hour, item.minute);
    if (rightNow.isAfter(testTime)) {
      return item;
    }
  }
  return Schedule(hour: 12, minute: 00, firstCurrent: "Unknown", firstNext: "Unknown", firstDateTime: "12:00", secondCurrent: "Unknown", secondNext: "Unknown", secondDateTime: "12:00", thirdCurrent: "Unknown", thirdNext: "Unknown", thirdDateTime: "12:00");
}

List<Schedule> mondayList = [
  Schedule(hour: 13, minute: 41, firstCurrent: "H", firstNext: "Let Out", firstDateTime: "14:24", secondCurrent: "H", secondNext: "Let Out", secondDateTime: "14:24", thirdCurrent: "H", thirdNext: "Let Out", thirdDateTime: "14:24"),
  Schedule(hour: 13, minute: 38, firstCurrent: "Passing", firstNext: "H", firstDateTime: "13:41", secondCurrent: "Passing", secondNext: "H", secondDateTime: "13:41", thirdCurrent: "Passing", thirdNext: "H", thirdDateTime: "13:41"),
  Schedule(hour: 12, minute: 56, firstCurrent: "G", firstNext: "H", firstDateTime: "13:38", secondCurrent: "G", secondNext: "H", secondDateTime: "13:38", thirdCurrent: "G", thirdNext: "H", thirdDateTime: "13:38"),
  Schedule(hour: 12, minute: 53, firstCurrent: "Passing", firstNext: "G", firstDateTime: "12:56", secondCurrent: "Passing", secondNext: "G", secondDateTime: "12:56", thirdCurrent: "Passing", thirdNext: "G", thirdDateTime: "12:56"),
  Schedule(hour: 12, minute: 23, firstCurrent: "F", firstNext: "G", firstDateTime: "12:53", secondCurrent: "F", secondNext: "G", secondDateTime: "12:53", thirdCurrent: "Lunch", thirdNext: "G", thirdDateTime: "12:53"),
  Schedule(hour: 12, minute: 20, firstCurrent: "F", firstNext: "G", firstDateTime: "12:53", secondCurrent: "F", secondNext: "G", secondDateTime: "12:53", thirdCurrent: "Passing", thirdNext: "Lunch", thirdDateTime: "12:23"),
  Schedule(hour: 12, minute: 10, firstCurrent: "F", firstNext: "G", firstDateTime: "12:53", secondCurrent: "F", secondNext: "G", secondDateTime: "12:53", thirdCurrent: "F", thirdNext: "Lunch", thirdDateTime: "12:20"),
  Schedule(hour: 12, minute: 07, firstCurrent: "Passing", firstNext: "F", firstDateTime: "12:10", secondCurrent: "Passing", secondNext: "F", secondDateTime: "12:10", thirdCurrent: "F", thirdNext: "Lunch", thirdDateTime: "12:20"),
  Schedule(hour: 11, minute: 37, firstCurrent: "E", firstNext: "F", firstDateTime: "12:07", secondCurrent: "Lunch", secondNext: "F", secondDateTime: "12:07", thirdCurrent: "F", thirdNext: "Lunch", thirdDateTime: "12:20"),
  Schedule(hour: 11, minute: 34, firstCurrent: "E", firstNext: "F", firstDateTime: "12:07", secondCurrent: "Passing", secondNext: "Lunch", secondDateTime: "11:37", thirdCurrent: "Passing", thirdNext: "F", thirdDateTime: "11:37"),
  Schedule(hour: 11, minute: 24, firstCurrent: "E", firstNext: "F", firstDateTime: "12:07", secondCurrent: "E", secondNext: "Lunch", secondDateTime: "11:34", thirdCurrent: "E", thirdNext: "F", thirdDateTime: "11:34"),
  Schedule(hour: 11, minute: 21, firstCurrent: "Passing", firstNext: "E", firstDateTime: "11:24", secondCurrent: "E", secondNext: "Lunch", secondDateTime: "11:34", thirdCurrent: "E", thirdNext: "F", thirdDateTime: "11:34"),
  Schedule(hour: 10, minute: 51, firstCurrent: "Lunch", firstNext: "E", firstDateTime: "11:21", secondCurrent: "E", secondNext: "Lunch", secondDateTime: "11:34", thirdCurrent: "E", thirdNext: "F", thirdDateTime: "11:34"),
  Schedule(hour: 10, minute: 48, firstCurrent: "Passing", firstNext: "Lunch", firstDateTime: "10:51", secondCurrent: "Passing", secondNext: "E", secondDateTime: "10:51", thirdCurrent: "Passing", thirdNext: "E", thirdDateTime: "10:51"),
  Schedule(hour: 10, minute: 05, firstCurrent: "D", firstNext: "Lunch", firstDateTime: "10:48", secondCurrent: "D", secondNext: "E", secondDateTime: "10:48", thirdCurrent: "D", thirdNext: "E", thirdDateTime: "10:48"),
  Schedule(hour: 10, minute: 02, firstCurrent: "Passing", firstNext: "D", firstDateTime: "10:05", secondCurrent: "Passing", secondNext: "D", secondDateTime: "10:05", thirdCurrent: "Passing", thirdNext: "D", thirdDateTime: "10:05"),
  Schedule(hour: 9, minute: 19, firstCurrent: "C", firstNext: "D", firstDateTime: "10:02", secondCurrent: "C", secondNext: "D", secondDateTime: "10:02", thirdCurrent: "C", thirdNext: "D", thirdDateTime: "10:02"),
  Schedule(hour: 9, minute: 16, firstCurrent: "Passing", firstNext: "C", firstDateTime: "9:19", secondCurrent: "Passing", secondNext: "C", secondDateTime: "9:19", thirdCurrent: "Passing", thirdNext: "C", thirdDateTime: "9:19"),
  Schedule(hour: 8, minute: 33, firstCurrent: "B", firstNext: "C", firstDateTime: "9:16", secondCurrent: "B", secondNext: "C", secondDateTime: "9:16", thirdCurrent: "B", thirdNext: "C", thirdDateTime: "9:16"),
  Schedule(hour: 8, minute: 30, firstCurrent: "Passing", firstNext: "B", firstDateTime: "8:33", secondCurrent: "Passing", secondNext: "B", secondDateTime: "8:33", thirdCurrent: "Passing", thirdNext: "B", thirdDateTime: "8:33"),
  Schedule(hour: 7, minute: 45, firstCurrent: "A", firstNext: "B", firstDateTime: "8:30", secondCurrent: "A", secondNext: "B", secondDateTime: "8:30", thirdCurrent: "A", thirdNext: "B", thirdDateTime: "8:30"),
  Schedule(hour: 7, minute: 43, firstCurrent: "Two Bell", firstNext: "A", firstDateTime: "7:45", secondCurrent: "Two Bell", secondNext: "A", secondDateTime: "7:45", thirdCurrent: "Two Bell", thirdNext: "A", thirdDateTime: "7:45"),
  Schedule(hour: 7, minute: 40, firstCurrent: "Passing", firstNext: "A", firstDateTime: "7:45", secondCurrent: "Passing", secondNext: "A", secondDateTime: "7:45", thirdCurrent: "Passing", thirdNext: "A", thirdDateTime: "7:45")
];