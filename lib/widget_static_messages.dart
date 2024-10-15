import 'package:flutter/material.dart';

Column staticEarlyDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("It's too early!", style: TextStyle(fontSize: 24)),
      Text("Go back to bed.", style: TextStyle(fontSize: 24))
    ],
  );
}

Column staticStartOfDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("Time to get up", style: TextStyle(fontSize: 24)),
      Text("and get to school!", style: TextStyle(fontSize: 24))
    ],
  );
}

Column staticEndOfDay(int day) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("School is over!", style: TextStyle(fontSize: 24)),
      Text("Go home.", style: TextStyle(fontSize: 24))
    ],
  );
}

Column staticWeekend() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("It's the Weekend!", style: TextStyle(fontSize: 24)),
      Text("There's no school today.", style: TextStyle(fontSize: 24)),
    ],
  );
}

Column staticHoliday() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("It's a Holiday!", style: TextStyle(fontSize: 24)),
      Text("There's no school today.", style: TextStyle(fontSize: 24)),
    ],
  );
}

Column staticVacation() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("It's Vacation!", style: TextStyle(fontSize: 24)),
      Text("There's no school today.", style: TextStyle(fontSize: 24)),
    ],
  );
}
