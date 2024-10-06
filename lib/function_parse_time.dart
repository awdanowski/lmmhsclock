
String parseTime(String timeString) {

  // Split the string into hours and minutes
  List<String> parts = timeString.split(':');
  int hour = int.parse(parts[0]);
  int minute = int.parse(parts[1]);

  // Get the current date
  DateTime now = DateTime.now();

  // Create a DateTime object using the current date and the extracted time
  DateTime dateTime = DateTime(now.year, now.month, now.day, hour, minute);

  final timeDifference = dateTime.difference(now);

  final difference = timeDifference.inMinutes + 1;
  // Print the resulting DateTime object
  return difference.toString();
}