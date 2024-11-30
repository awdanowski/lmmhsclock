import 'package:lmmhsclock/domain/enums.dart';

import 'class_message_and_date.dart';
import 'function_build_date.dart';
import 'function_get_schedule_type.dart';
import 'function_test_for_summer_vacation.dart';
import 'map_special_days.dart';

MessageAndDate getMessageAndDate(DateTime currentDateTime) {
  String dailyMessage = "";
  ScheduleType currentSchedule;
  final String currentDateString = buildDate(currentDateTime);

  final String year = currentDateTime.year.toString();
  final String month = currentDateTime.month.toString().padLeft(2, '0');
  final String day = currentDateTime.day.toString().padLeft(2, '0');

  String key = "$year-$month-$day";

  if (specialDays[key] != null) {
    dailyMessage = specialDays[key]!.displayText;
    currentSchedule = specialDays[key]!.schedule;
  } else if (testForSummerVacation(currentDateTime)) {
    currentSchedule = ScheduleType.vacation;
  } else {
    currentSchedule = getScheduleTypeForToday(currentDateTime);
  }

  return MessageAndDate(
      dailyMessage: dailyMessage, currentDateString: currentDateString, currentSchedule: currentSchedule);
}
