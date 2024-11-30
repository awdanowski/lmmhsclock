import 'list_date_strings.dart';

String buildDate(DateTime date) {
  // Manually create the formatted date string

  String dayOfWeek = weekdays[
      date.weekday - 1]; // DateTime weekday is 1 (Monday) to 7 (Sunday)

  String suffix = "";

  // Handle the special cases for 11, 12, and 13, which always end in 'th'
  if (date.day >= 11 && date.day <= 13) {
    suffix = 'th';
  } else {
    // Otherwise, use modular arithmetic to determine the suffix
    switch (date.day % 10) {
      case 1:
        suffix = 'st';
        break;
      case 2:
        suffix = 'nd';
        break;
      case 3:
        suffix = 'rd';
        break;
      default:
        suffix = 'th';
        break;
    }
  }

  String month = months[date.month - 1];
  String day = date.day.toString();

  return "$dayOfWeek, $month $day$suffix";
}
