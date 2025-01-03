import 'class_special_days.dart';

ScheduleType getScheduleTypeForToday(DateTime date) {
  switch (date.weekday) {
    case DateTime.saturday:
      return ScheduleType.saturday;
    case DateTime.sunday:
      return ScheduleType.sunday;
    default:
      return ScheduleType.standard;
  }
}
