import 'package:flutter/material.dart';

Text buildTime(AsyncSnapshot<DateTime> snapshot) {
  String theHour = "";
  String modifier = "";
  if (snapshot.data!.hour > 12) {
    int tempInt = snapshot.data!.hour - 12;
    modifier = "pm";
    theHour = tempInt.toString();
  } else {
    modifier = "am";
    theHour = snapshot.data!.hour.toString();
  }
  String theMinute = snapshot.data!.minute.toString().padLeft(2, '0');
  String theSecond = snapshot.data!.second.toString().padLeft(2, '0');
  return Text(
    "$theHour:$theMinute:$theSecond $modifier",
    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
  );
}