import 'package:flutter/material.dart';
import 'package:lmmhsclock/class_special_days.dart';
import 'package:lmmhsclock/function_parse_time.dart';
import 'package:lmmhsclock/function_standard_schedule.dart';
import 'package:lmmhsclock/list_schedules.dart';
import 'package:lmmhsclock/widget_minute_tile.dart';
import 'package:lmmhsclock/widget_schedule_tile.dart';
import 'package:lmmhsclock/widget_static_messages.dart';

import 'class_schedule.dart';

Column dynamicSchoolDay(SpecialDay specialDay, DateTime rightNow) {
  final Schedule currentSchedule;
  int dayOfTheWeek = rightNow.weekday;

  final bool earlyDay = rightNow
      .isBefore(DateTime(rightNow.year, rightNow.month, rightNow.day, 6, 00));

  final bool startOfDay;
  if (specialDay.schedule == ScheduleType.delayedStart) {
    dayOfTheWeek = 10;
    startOfDay = rightNow
        .isBefore(DateTime(rightNow.year, rightNow.month, rightNow.day, 9, 00));
  } else {
    startOfDay = rightNow
        .isBefore(DateTime(rightNow.year, rightNow.month, rightNow.day, 6, 45));
  }

  final bool endOfDay;

  if (specialDay.schedule == ScheduleType.earlyDismissal11_1) {
    dayOfTheWeek = 11;
    endOfDay = rightNow
        .isAfter(DateTime(rightNow.year, rightNow.month, rightNow.day, 11, 15));
  } else if (specialDay.schedule == ScheduleType.earlyDismissal4_18) {
    dayOfTheWeek = 12;
    endOfDay = rightNow
        .isAfter(DateTime(rightNow.year, rightNow.month, rightNow.day, 11, 15));
  } else {
    endOfDay = rightNow
        .isAfter(DateTime(rightNow.year, rightNow.month, rightNow.day, 14, 24));
  }

  if (earlyDay) {
    return staticEarlyDay(dayOfTheWeek);
  } else if (startOfDay) {
    return staticStartOfDay(dayOfTheWeek);
  } else if (endOfDay) {
    return staticEndOfDay(dayOfTheWeek);
  } else {
    switch (dayOfTheWeek) {
      case 1:
        currentSchedule = standardSchedule(mondayList, rightNow);
        break;
      case 2:
        currentSchedule = standardSchedule(tuesdayList, rightNow);
        break;
      case 3:
        currentSchedule = standardSchedule(wednesdayList, rightNow);
        break;
      case 4:
        currentSchedule = standardSchedule(thursdayList, rightNow);
        break;
      case 5:
        currentSchedule = standardSchedule(fridayList, rightNow);
        break;
      case 10:
        currentSchedule = standardSchedule(lateArrivalList, rightNow);
        break;
      case 11:
        currentSchedule = standardSchedule(earlyDismissal11_1List, rightNow);
        break;
      case 12:
        currentSchedule = standardSchedule(earlyDismissal4_18List, rightNow);
        break;

      default:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Unknown day!', style: TextStyle(fontSize: 24)),
            Icon(Icons.error, size: 50),
          ],
        );
    }
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Currently:",
            style: TextStyle(
              // color: Colors.black,
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      // Container(
      //   height: 10,
      // ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 8,
              child: ScheduleTile(text: currentSchedule.first.current)),
          Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 8,
              child: ScheduleTile(text: currentSchedule.second.current)),
          Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 8,
              child: ScheduleTile(text: currentSchedule.third.current)),
          Spacer(
            flex: 1,
          ),
        ],
      ),
      // Container(
      //   height: 10,
      // ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.first.ends, rightNow),
          ),
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.second.ends, rightNow),
          ),
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.third.ends, rightNow),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
      Container(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Next Up:",
            style: TextStyle(
              // color: Colors.black,
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 8, child: ScheduleTile(text: currentSchedule.first.next)),
          Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 8, child: ScheduleTile(text: currentSchedule.second.next)),
          Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 8, child: ScheduleTile(text: currentSchedule.third.next)),
          Spacer(
            flex: 1,
          ),
        ],
      ),
      Container(
        height: 10,
      ),
    ],
  );
}
