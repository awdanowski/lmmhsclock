import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/build_display.dart';
import 'package:lmmhsclock/theme.dart';

import 'build_date.dart';
import 'build_logo.dart';
import 'build_time.dart';
import 'class_special_days.dart';
import 'map_special_days.dart';
import 'stream_current_time.dart';

void main() {
  final runnableApp = _buildRunnableApp(
    isWeb: kIsWeb,
    webAppWidth: 480.0,
    app: const MyApp(),
  );

  runApp(runnableApp);
}

Widget _buildRunnableApp({
  required bool isWeb,
  required double webAppWidth,
  required Widget app,
}) {
  /// If this is not a webpage, run the regular app
  if (!isWeb) {
    return app;
  }

  /// If it is a webpage, wrap the app in a SizedBox
  return Center(
    child: ClipRect(
      child: SizedBox(
        width: webAppWidth,
        child: app,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LMMHS',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const MyHomePage(title: 'LMMHS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: buildLogo(),
            ),
            Expanded(
              flex: 3,
              child: StreamBuilder<DateTime>(
                stream: currentTimeStream(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Row(
                      // While waiting for the first value
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                      ],
                    );
                  } else if (snapshot.hasData) {
                    /// This is the actual line
                    DateTime rightNow = snapshot.data!;

                    /// This is so I can test different dates
                    // DateTime rightNow = DateTime(2024, 11, 1, 12, 23);

                    final String year = rightNow.year.toString();
                    final String month =
                        rightNow.month.toString().padLeft(2, '0');
                    final String day = rightNow.day.toString().padLeft(2, '0');

                    String key = "$year-$month-$day";

                    SpecialDay specialDay = specialDays[key] ??
                        SpecialDay(
                            schedule: ScheduleType.standard, displayText: "");

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          specialDay.displayText,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        buildDate(rightNow),
                        buildTime(rightNow),
                        Expanded(
                            flex: 1, child: buildDisplay(rightNow, specialDay)),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return Text('No Data');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
