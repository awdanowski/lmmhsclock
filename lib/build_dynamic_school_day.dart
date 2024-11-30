import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/domain/enums.dart';
import 'package:lmmhsclock/domain/function_set_schedule.dart';
import 'package:lmmhsclock/function_parse_time.dart';
import 'package:lmmhsclock/widget_minute_tile.dart';
import 'package:lmmhsclock/widget_schedule_tile.dart';
import 'package:lmmhsclock/widget_static_messages.dart';

import 'domain/class_schedule.dart';

Column dynamicSchoolDay(ScheduleType todaySchedule, DateTime rightNow) {
  var minuteGroup = AutoSizeGroup();
  var textGroup = AutoSizeGroup();
  final Schedule currentSchedule;

  /// If it is a school day, check to see if it is too early to be awake
  final bool earlyDay = rightNow.isBefore(DateTime(rightNow.year, rightNow.month, rightNow.day, 6, 00));

  /// If it is a school day, check to see when school starts
  final bool startOfDay;
  if (todaySchedule == ScheduleType.delayedStart) {
    startOfDay = rightNow.isBefore(DateTime(rightNow.year, rightNow.month, rightNow.day, 9, 00));
  } else {
    startOfDay = rightNow.isBefore(DateTime(rightNow.year, rightNow.month, rightNow.day, 6, 45));
  }

  /// Check to see if the school day has ended
  final bool endOfDay;
  if (todaySchedule == ScheduleType.earlyDismissal) {
    endOfDay = rightNow.isAfter(DateTime(rightNow.year, rightNow.month, rightNow.day, 11, 15));
  } else {
    endOfDay = rightNow.isAfter(DateTime(rightNow.year, rightNow.month, rightNow.day, 14, 24));
  }

  if (earlyDay) {
    return staticText(StaticMessage.tooEarly);
  } else if (startOfDay) {
    return staticText(StaticMessage.startOfDay);
  } else if (endOfDay) {
    return staticText(StaticMessage.endOfDay);
  } else {
    currentSchedule = setSchedule(todaySchedule, rightNow);
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 3,
            child: AutoSizeText(
              "Currently:",
              style: TextStyle(
                // color: Colors.black,
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              group: textGroup,
            ),
          ),
          Spacer(
            flex: 2,
          )
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
          Expanded(flex: 8, child: ScheduleTile(text: currentSchedule.lunch1.current)),
          Spacer(
            flex: 1,
          ),
          Expanded(flex: 8, child: ScheduleTile(text: currentSchedule.lunch2.current)),
          Spacer(
            flex: 1,
          ),
          Expanded(flex: 8, child: ScheduleTile(text: currentSchedule.lunch3.current)),
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
            text: parseTime(currentSchedule.lunch1.ends, rightNow),
            group: minuteGroup,
          ),
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.lunch2.ends, rightNow),
            group: minuteGroup,
          ),
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.lunch3.ends, rightNow),
            group: minuteGroup,
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
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 3,
            child: AutoSizeText(
              "Next Up:",
              style: TextStyle(
                // color: Colors.black,
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              group: textGroup,
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(flex: 8, child: ScheduleTile(text: currentSchedule.lunch1.next)),
          Spacer(
            flex: 1,
          ),
          Expanded(flex: 8, child: ScheduleTile(text: currentSchedule.lunch2.next)),
          Spacer(
            flex: 1,
          ),
          Expanded(flex: 8, child: ScheduleTile(text: currentSchedule.lunch3.next)),
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
