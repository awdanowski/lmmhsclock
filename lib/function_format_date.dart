import 'date_strings.dart';

String formatDate(DateTime date) {
  // Format the date using the imported lists
  String dayOfWeek = weekdays[
  date.weekday - 1]; // DateTime weekday is 1 (Monday) to 7 (Sunday)
  String month = months[date.month - 1];
  String day = date.day.toString();
  String year = date.year.toString();

  // Return formatted string
  return "$dayOfWeek, $month $day, $year";
}