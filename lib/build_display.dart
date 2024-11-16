import 'package:flutter/material.dart';
import 'package:lmmhsclock/class_special_days.dart';
import 'package:lmmhsclock/widget_static_messages.dart';

import 'build_dynamic_school_day.dart';

Column buildDisplay(DateTime rightNow, SpecialDay specialDay) {
  // SpecialDay specialDay = specialDay[key] ?? SpecialDay(schedule: ScheduleType.standard, displayText: "");

  /// For a weekend

  switch (specialDay.schedule) {
    case ScheduleType.saturday:
    case ScheduleType.sunday:
      return staticText("weekendMessage");
    case ScheduleType.holiday:
      return staticText('holidayMessage');
    case ScheduleType.vacation:
      return staticText("vacationMessage");
    case ScheduleType.standard:
    case ScheduleType.delayedStart:
    case ScheduleType.earlyDismissal11_1:
    case ScheduleType.earlyDismissal4_18:
      return dynamicSchoolDay(specialDay, rightNow);
    default:
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Unknown day!', style: TextStyle(fontSize: 24)),
          Icon(Icons.error, size: 50),
        ],
      );
  }
}
