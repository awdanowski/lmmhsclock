import 'package:flutter/material.dart';
import 'package:lmmhsclock/domain/enums.dart';
import 'package:lmmhsclock/widget_static_messages.dart';

import 'build_dynamic_school_day.dart';

Column buildDisplay(DateTime rightNow, ScheduleType today) {
  // SpecialDay specialDay = specialDay[key] ?? SpecialDay(schedule: ScheduleType.standard, displayText: "");

  /// For a weekend

  switch (today) {
    case ScheduleType.saturday:
    case ScheduleType.sunday:
      return staticText(StaticMessage.weekend);
    case ScheduleType.holiday:
      return staticText(StaticMessage.holiday);
    case ScheduleType.vacation:
      return staticText(StaticMessage.vacation);
    case ScheduleType.standard:
    case ScheduleType.delayedStart:
    case ScheduleType.earlyDismissal:
    case ScheduleType.pepRally:
      return dynamicSchoolDay(today, rightNow);
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
