import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/function_parse_time.dart';
import 'package:lmmhsclock/function_standard_schedule.dart';
import 'package:lmmhsclock/list_schedules.dart';

import 'class_schedules.dart';

Column dynamicSchoolDay(int day, DateTime rightNow) {
  Schedule currentSchedule;

  switch (day) {
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
    default:
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Unknown day!', style: TextStyle(fontSize: 24)),
          Icon(Icons.error, size: 50),
        ],
      );
  }

  Color myMaroon = Color(0xFF862633);
  int flexSpacer = 8;

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Currently:",
            style: TextStyle(
              color: Colors.black,
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
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: myMaroon,
                height: 50,
                child: AutoSizeText(
                  currentSchedule.firstCurrent,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: myMaroon,
                height: 50,
                child: AutoSizeText(
                  currentSchedule.secondCurrent,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: myMaroon,
                height: 50,
                child: AutoSizeText(
                  currentSchedule.thirdCurrent,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: AutoSizeText(
                "${parseTime(currentSchedule.firstDateTime)} mins",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: AutoSizeText(
                "${parseTime(currentSchedule.secondDateTime)} mins",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: AutoSizeText(
                "${parseTime(currentSchedule.thirdDateTime)} mins",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
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
              color: Colors.black,
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
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: myMaroon,
                height: 50,
                child: AutoSizeText(
                  currentSchedule.firstNext,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: myMaroon,
                height: 50,
                child: AutoSizeText(
                  currentSchedule.secondNext,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: flexSpacer,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: myMaroon,
                height: 50,
                child: AutoSizeText(
                  currentSchedule.thirdNext,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      )
    ],
  );
}
