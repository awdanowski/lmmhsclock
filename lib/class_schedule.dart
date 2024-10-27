import 'package:lmmhsclock/class_schedule_entry.dart';

class Schedule {
  Schedule(
      {
        required this.hour,
        required this.minute,
    required this.first,
    required this.second,
    required this.third,
  });

  int hour;
  int minute;

  ScheduleEntry first;
  ScheduleEntry second;
  ScheduleEntry third;
}
