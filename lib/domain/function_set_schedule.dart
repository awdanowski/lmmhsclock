import 'package:lmmhsclock/domain/list_standard_schedules.dart';
import 'package:lmmhsclock/domain/map_schedule_entries.dart';

import 'class_schedule.dart';
import 'enums.dart';
import 'list_special_schedules.dart';

Schedule setSchedule(ScheduleType scheduleType, DateTime rightNow) {
  final int dayOfTheWeek = rightNow.weekday;
  final List<Schedule> todayList;

  final String currentDay = "${rightNow.year}-${rightNow.month}-${rightNow.day}";

  switch (scheduleType) {
    case ScheduleType.standard:
      switch (dayOfTheWeek) {
        case 1:
          todayList = mondayList;
          break;
        case 2:
          todayList = tuesdayList;
          break;
        case 3:
          todayList = wednesdayList;
          break;
        case 4:
          todayList = thursdayList;
          break;
        case 5:
          todayList = fridayList;
          break;
        default:
          todayList = [];
          break;
      }
    case ScheduleType.delayedStart:
      switch (currentDay) {
        case "2024-10-28":
          todayList = delayedStart241028List;
          break;
        case "2025-3-14":
          todayList = delayedStart250314List;
          break;
        default:
          todayList = [];
          break;
      }
    case ScheduleType.earlyDismissal:
      switch (currentDay) {
        case "2024-11-1":
          todayList = earlyDismissal241101List;
          break;
        case "2025-4-18":
          todayList = earlyDismissal250418List;
          break;
        default:
          todayList = [];
          break;
      }
    case ScheduleType.pepRally:
      switch (currentDay) {
        case "2024-11-22":
          todayList = pepRally241122List;
          break;
        default:
          todayList = [];
          break;
      }
    case ScheduleType.vacation:
    case ScheduleType.holiday:
    case ScheduleType.saturday:
    case ScheduleType.sunday:
    default:
      todayList = [];
      break;
  }

  for (Schedule item in todayList) {
    DateTime testTime = DateTime(rightNow.year, rightNow.month, rightNow.day, item.hour, item.minute);
    if (rightNow.isAfter(testTime)) {
      return item;
    }
  }
  return Schedule(
    hour: 12,
    minute: 00,
    lunch1: scheduleEntries["Unknown"]!,
    lunch2: scheduleEntries["Unknown"]!,
    lunch3: scheduleEntries["Unknown"]!,
  );
}
