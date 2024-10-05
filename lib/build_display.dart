import 'package:flutter/material.dart';
import 'package:lmmhsclock/class_schedules.dart';
import 'package:lmmhsclock/schedule_monday.dart';

Column buildDisplay(DateTime rightNow) {
  Color myMaroon = Color(0xFF862633);
  int flexSpacer = 8;

  Schedule currentSchedule = mondaySchedule(rightNow);

  DateTime firstTime = DateTime(rightNow.year, rightNow.month, rightNow.day, currentSchedule.hour, currentSchedule.minute);
  DateTime secondTime = DateTime(rightNow.year, rightNow.month, rightNow.day, currentSchedule.hour, currentSchedule.minute);
  DateTime thirdTime = DateTime(rightNow.year, rightNow.month, rightNow.day, currentSchedule.hour, currentSchedule.minute);

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
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
                child: Text(currentSchedule.firstCurrent,
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
                height: 50,child: Text(currentSchedule.secondCurrent,
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
                height: 50,child: Text(currentSchedule.thirdCurrent,
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
              child: Text(
                "***",
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
              child: Container(
                color: myMaroon,
                height: 50,
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
              child: Text(
                remainingTime.inMinutes.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
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
