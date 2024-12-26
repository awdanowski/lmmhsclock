bool isBeforeTime(DateTime now, int hour, int minute) =>
    now.isBefore(DateTime(now.year, now.month, now.day, hour, minute));
