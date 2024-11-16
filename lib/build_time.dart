import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

AutoSizeText buildTime(DateTime date) {
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
  return AutoSizeText(
    "$theHour:$theMinute:$theSecond", textAlign: TextAlign.left,
    // $modifier",
    maxLines: 1,
    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, fontFamily: "IBMPlex"),
    minFontSize: 12,
  );
}
