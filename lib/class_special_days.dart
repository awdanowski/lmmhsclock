class SpecialDay {
  SpecialDay({ required this.schedule,
        required this.displayText,
      });

  ScheduleType schedule;
  String displayText;
}

enum ScheduleType {
  standard,
  earlyDismissal,
  delayedStart,
  holiday,
  vacation,
  saturday,
  sunday
}