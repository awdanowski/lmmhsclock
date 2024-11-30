import 'enums.dart';

class MessageAndDate {
  String dailyMessage;
  String currentDateString;
  ScheduleType currentSchedule;

  MessageAndDate({
    required this.dailyMessage,
    required this.currentDateString,
    required this.currentSchedule,
  });
}
