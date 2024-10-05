import 'package:flutter/material.dart';
import 'format_date.dart';

Text buildDate(AsyncSnapshot<DateTime> snapshot) {
  // Manually create the formatted date string
  String formattedDate = formatDate(snapshot.data!);

  return Text(
    formattedDate,
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}