import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Column staticEarlyDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      AutoSizeText("It's too early!", style: TextStyle(fontSize: 24), maxLines: 1,),
      AutoSizeText("Go back to bed.", style: TextStyle(fontSize: 24), maxLines: 1,)
    ],
  );
}

Column staticStartOfDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      AutoSizeText("Time to get up", style: TextStyle(fontSize: 24), maxLines: 1,),
      AutoSizeText("and get to school!", style: TextStyle(fontSize: 24), maxLines: 1,)
    ],
  );
}

Column staticEndOfDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      AutoSizeText("School is over!", style: TextStyle(fontSize: 24), maxLines: 1,),
      AutoSizeText("Go home.", style: TextStyle(fontSize: 24), maxLines: 1,)
    ],
  );
}

Column staticWeekend() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      AutoSizeText("It's the Weekend!", style: TextStyle(fontSize: 24), maxLines: 1,),
      AutoSizeText("There's no school today.", style: TextStyle(fontSize: 24), maxLines: 1,),
    ],
  );
}

Column staticHoliday() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      AutoSizeText("It's a Holiday!", style: TextStyle(fontSize: 24), maxLines: 1,),
      AutoSizeText("There's no school today.", style: TextStyle(fontSize: 24), maxLines: 1,),
    ],
  );
}

Column staticVacation() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      AutoSizeText("It's Vacation!", style: TextStyle(fontSize: 24), maxLines: 1,),
      AutoSizeText("There's no school today.", style: TextStyle(fontSize: 24), maxLines: 1,),
    ],
  );
}

Column staticText(String messageKey) {

  var staticGroup = AutoSizeGroup();

  final messages = predefinedMessages[messageKey];

  if (messages == null) {
    throw ArgumentError("Invalid message key: $messageKey");
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: messages.map((message) {
        return AutoSizeText(
          message,
          style: TextStyle(fontSize: 24),
          maxLines: 1,
          group: staticGroup,
        );
      }).toList(),
  );
}

const Map<String, List<String>> predefinedMessages = {
  "earlyDayMessage": [
    "It's too early!",
    "Go back to bed.",
  ],
  "startOfDayMessage": [
    "Time to get up",
    "and get to school!",
  ],
  "endOfDayMessage": [
    "School is over!",
    "Go home.",
  ],
  "weekendMessage": [
    "It's the Weekend!",
    "There's no school today.",
  ],
  "holidayMessage": [
    "It's a Holiday!",
    "There's no school today.",
  ],
  "vacationMessage": [
    "It's Vacation!",
    "There's no school today.",
  ],
};