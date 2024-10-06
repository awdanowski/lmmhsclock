import 'class_schedules.dart';

Schedule standardSchedule(List<Schedule> todayList, DateTime rightNow) {
  for (Schedule item in todayList) {
    DateTime testTime = DateTime(rightNow.year, rightNow.month, rightNow.day, item.hour, item.minute);
    if (rightNow.isAfter(testTime)) {
      return item;
    }
  }
  return Schedule(hour: 12, minute: 00, firstCurrent: "Unknown", firstNext: "Unknown", firstDateTime: "12:00", secondCurrent: "Unknown", secondNext: "Unknown", secondDateTime: "12:00", thirdCurrent: "Unknown", thirdNext: "Unknown", thirdDateTime: "12:00");
}

