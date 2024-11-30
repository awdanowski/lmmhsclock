import 'package:lmmhsclock/domain/class_schedule_entry.dart';

class Schedule {
  Schedule({
    required this.hour,
    required this.minute,
    required this.lunch1,
    required this.lunch2,
    required this.lunch3,
  });

  int hour;
  int minute;

  ScheduleEntry lunch1;
  ScheduleEntry lunch2;
  ScheduleEntry lunch3;
}
