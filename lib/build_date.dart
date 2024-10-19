import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'list_date_strings.dart';

AutoSizeText buildDate(DateTime date) {
  // Manually create the formatted date string

  String dayOfWeek = weekdays[
      date.weekday - 1]; // DateTime weekday is 1 (Monday) to 7 (Sunday)
  String month = months[date.month - 1];
  String day = date.day.toString();
  String year = date.year.toString();

  // Return formatted string
  String formattedDate = "$dayOfWeek, $month $day, $year";

  return AutoSizeText(
    textAlign: TextAlign.center,
    maxLines: 1,
    formattedDate,
    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
  );
}