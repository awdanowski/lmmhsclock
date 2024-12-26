bool isAfterTime(DateTime now, int hour, int minute) =>
    now.isAfter(DateTime(now.year, now.month, now.day, hour, minute));
