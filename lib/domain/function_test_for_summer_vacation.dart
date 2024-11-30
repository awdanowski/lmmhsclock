bool testForSummerVacation(DateTime currentDateTime) {
  DateTime startDate = DateTime(2025, 6, 23); // June 23, 2025
  DateTime endDate = DateTime(2025, 8, 28); // August 28, 2025
  return currentDateTime.isAfter(startDate) && currentDateTime.isBefore(endDate);
}
