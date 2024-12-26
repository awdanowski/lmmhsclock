import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/class_special_days.dart';
import 'package:lmmhsclock/function_after_time.dart';
import 'package:lmmhsclock/function_before_time.dart';
import 'package:lmmhsclock/function_parse_time.dart';
import 'package:lmmhsclock/function_standard_schedule.dart';
import 'package:lmmhsclock/list_schedules.dart';
import 'package:lmmhsclock/widget_minute_tile.dart';
import 'package:lmmhsclock/widget_schedule_tile.dart';
import 'package:lmmhsclock/widget_static_messages.dart';
import 'package:lmmhsclock/widget_text_with_spacers.dart';

import 'class_schedule.dart';

Column dynamicSchoolDay(SpecialDay specialDay, DateTime rightNow) {
  var minuteGroup = AutoSizeGroup();
  var textGroup = AutoSizeGroup();

  final Schedule currentSchedule;
  int dayOfTheWeek = rightNow.weekday;

  final bool earlyDay = isBeforeTime(rightNow, 6, 0);

  final bool startOfDay = specialDay.schedule == ScheduleType.delayedStart
      ? isBeforeTime(rightNow, 9, 0)
      : isBeforeTime(rightNow, 6, 45);

  final bool endOfDay = specialDay.schedule == ScheduleType.earlyDismissal11_1
      ? isAfterTime(rightNow, 11, 15)
      : specialDay.schedule == ScheduleType.earlyDismissal4_18
          ? isAfterTime(rightNow, 11, 15)
          : isAfterTime(rightNow, 14, 24);

  if (earlyDay) return staticText("earlyDayMessage");
  if (startOfDay) return staticText("startOfDayMessage");
  if (endOfDay) return staticText("endOfDayMessage");

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

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    //mainAxisSize: MainAxisSize.max,
    //crossAxisAlignment: CrossAxisAlignment.center,
    //spacing: 8.0,
    children: [
      TextWithSpacers(
        text: "Currently:",
        textGroup: textGroup,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //spacing: 16.0,
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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.first.ends, rightNow),
            group: minuteGroup,
          ),
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.second.ends, rightNow),
            group: minuteGroup,
          ),
          Spacer(
            flex: 1,
          ),
          MinuteTile(
            text: parseTime(currentSchedule.third.ends, rightNow),
            group: minuteGroup,
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
      TextWithSpacers(
        text: "Next Up:",
        textGroup: textGroup,
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
    SizedBox(
            height: 16,
          ),
    ],
  );
}
