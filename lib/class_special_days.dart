class SpecialDay {
  SpecialDay({ required this.schedule,
        required this.displayText,
      });

  ScheduleType schedule;
  String displayText;
}

enum ScheduleType {
  standard,
  earlyDismissal11_1,
  earlyDismissal4_18,
  delayedStart,
  holiday,
  vacation,
  saturday,
  sunday
}