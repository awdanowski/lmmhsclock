import 'package:lmmhsclock/class_special_days.dart';

Map<String, SpecialDay> specialDays = {
  '2024-08-29': SpecialDay(
      schedule: ScheduleType.earlyDismissal,
      displayText: 'First Day of School'),
  '2024-09-02':
      SpecialDay(schedule: ScheduleType.holiday, displayText: 'Labor Day'),
  '2024-09-06': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Ganesh Chaturthi'),
  '2024-09-08': SpecialDay(
      schedule: ScheduleType.sunday, displayText: 'National Grandparents Day'),
  '2024-09-09': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Back to School Night'),
  '2024-09-11':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Patriot Day'),
  '2024-10-01': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Mid-Point Term One'),
  '2024-10-02':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Rosh Hashanah'),
  '2024-10-03':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Rosh Hashanah'),
  '2024-10-04':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Rosh Hashanah'),
  '2024-10-11': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Casimir Pulaski Day'),
  '2024-10-12':
      SpecialDay(schedule: ScheduleType.saturday, displayText: 'Yom Kippur'),
  '2024-10-14': SpecialDay(
      schedule: ScheduleType.holiday, displayText: 'Indigenous People\'s Day'),
  '2024-10-17':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Sukkot'),
  '2024-10-18':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Sukkot'),
  '2024-10-19':
      SpecialDay(schedule: ScheduleType.saturday, displayText: 'Sukkot'),
  '2024-10-20':
      SpecialDay(schedule: ScheduleType.sunday, displayText: 'Sukkot'),
  '2024-10-21':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Sukkot'),
  '2024-10-22':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Sukkot'),
  '2024-10-23':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Sukkot'),
  '2024-10-24': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Shemini Atzerat'),
  '2024-10-25':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Simchat Torah'),
  '2024-10-28': SpecialDay(
      schedule: ScheduleType.delayedStart, displayText: 'Delayed Start'),
  '2024-10-30': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Parent Conferences'),
  '2024-10-31':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Halloween'),
  '2024-11-01': SpecialDay(
      schedule: ScheduleType.earlyDismissal, displayText: 'Early Release'),
  '2024-11-03': SpecialDay(schedule: ScheduleType.sunday, displayText: 'DST'),
  '2024-11-05':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Election Day'),
  '2024-11-11':
      SpecialDay(schedule: ScheduleType.holiday, displayText: 'Veterans\' Day'),
  '2024-11-25': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Thanksgiving Vacation'),
  '2024-11-26': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Thanksgiving Vacation'),
  '2024-11-27': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Thanksgiving Vacation'),
  '2024-11-28': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Thanksgiving Day'),
  '2024-11-29':
      SpecialDay(schedule: ScheduleType.vacation, displayText: 'Black Friday'),
  '2024-12-02':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Cyber Monday'),
  '2024-12-03': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Giving Tuesday'),
  '2024-12-11': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Mid-Point Term Two'),
  '2024-12-23': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Winter Vacation'),
  '2024-12-24':
      SpecialDay(schedule: ScheduleType.vacation, displayText: 'Christmas Eve'),
  '2024-12-25': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Christmas & Hanukkah'),
  '2024-12-26': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Winter Vacation'),
  '2024-12-27': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Winter Vacation'),
  '2024-12-28': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Winter Vacation'),
  '2024-12-29': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Winter Vacation'),
  '2024-12-30': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'Winter Vacation'),
  '2024-12-31': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'New Year\'s Eve'),
  '2025-01-01': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'New Year\'s Day'),
  '2025-01-02': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Last Day of Hanukkah'),
  '2025-01-20': SpecialDay(
      schedule: ScheduleType.holiday,
      displayText: 'Martin Luther King Jr. Day'),
  '2025-01-23':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Grades Close'),
  '2025-02-12':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Tu B\'Shevat'),
  '2025-02-13':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Tu B\'Shevat'),
  '2025-02-17': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'February Vacation'),
  '2025-02-18': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'February Vacation'),
  '2025-02-19': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'February Vacation'),
  '2025-02-20': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'February Vacation'),
  '2025-02-21': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'February Vacation'),
  '2025-03-04': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Mid-Point Term Three'),
  '2025-03-13':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Purim'),
  '2025-03-14': SpecialDay(
      schedule: ScheduleType.delayedStart, displayText: 'Delayed Start'),
  '2025-04-03':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Grades Close'),
  '2025-04-12': SpecialDay(
      schedule: ScheduleType.saturday, displayText: 'Start of Passover'),
  '2025-04-18': SpecialDay(
      schedule: ScheduleType.earlyDismissal, displayText: 'Early Release'),
  '2025-04-20':
      SpecialDay(schedule: ScheduleType.sunday, displayText: 'Easter'),
  '2025-04-21': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'April Vacation'),
  '2025-04-22': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'April Vacation'),
  '2025-04-23': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'April Vacation'),
  '2025-04-24': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'April Vacation'),
  '2025-04-25': SpecialDay(
      schedule: ScheduleType.vacation, displayText: 'April Vacation'),
  '2025-05-13': SpecialDay(
      schedule: ScheduleType.standard, displayText: 'Mid-Point Term Four'),
  '2025-05-26':
      SpecialDay(schedule: ScheduleType.holiday, displayText: 'Memorial Day'),
  '2025-06-01':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Shavuot'),
  '2025-06-02':
      SpecialDay(schedule: ScheduleType.standard, displayText: 'Shavuot'),
  '2025-06-08':
      SpecialDay(schedule: ScheduleType.sunday, displayText: 'Graduation'),
  '2025-06-16': SpecialDay(
      schedule: ScheduleType.earlyDismissal, displayText: 'Early Release'),
  '2025-06-19':
      SpecialDay(schedule: ScheduleType.holiday, displayText: 'Juneteenth'),
};