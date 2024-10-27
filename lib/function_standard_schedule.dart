import 'package:lmmhsclock/map_schedule_entries.dart';

import 'class_schedule.dart';

Schedule standardSchedule(List<Schedule> todayList, DateTime rightNow) {
  for (Schedule item in todayList) {
    DateTime testTime = DateTime(rightNow.year, rightNow.month, rightNow.day, item.hour, item.minute);
    if (rightNow.isAfter(testTime)) {
      return item;
    }
  }
  return Schedule(
    hour: 12,
    minute: 00,
    first: scheduleEntries["Unknown"]!,
    second: scheduleEntries["Unknown"]!,
    third: scheduleEntries["Unknown"]!,
  );
}

