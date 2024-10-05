class SpecialDay {
  SpecialDay(
      { required this.school,
        required this.schedule,
        required this.displayText,
      });

  bool school;
  ScheduleType schedule;
  String displayText;
}

enum ScheduleType { none, standard, earlyDismissal, delayedStart }