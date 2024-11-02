import 'package:flutter/material.dart';

Text buildTime(DateTime date) {
  String theHour = "";
  // String modifier = "";
  if (date.hour > 12) {
    int tempInt = date.hour - 12;
    // modifier = "pm";
    theHour = tempInt.toString();
    // } else if (date.hour == 12) {
    //   modifier = "pm";
    //   theHour = "12";
  } else {
    // modifier = "am";
    theHour = date.hour.toString();
  }
  String theMinute = date.minute.toString().padLeft(2, '0');
  String theSecond = date.second.toString().padLeft(2, '0');
  return Text(
    "$theHour:$theMinute:$theSecond", textAlign: TextAlign.left,
    // $modifier",
    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
  );
}