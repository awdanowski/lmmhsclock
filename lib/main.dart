import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/build_display.dart';
import 'package:lmmhsclock/theme.dart';

import 'build_date.dart';
import 'build_logo.dart';
import 'build_time.dart';
import 'class_special_days.dart';
import 'function_get_schedule_type.dart';
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
      debugShowCheckedModeBanner: false,
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
              flex: 1,
              child: StreamBuilder<DateTime>(
                stream: currentTimeStream(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: buildLogo(),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            // While waiting for the first value
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else if (snapshot.hasData) {
                    DateTime rightNow = snapshot.data!;

                    final String year = rightNow.year.toString();
                    final String month =
                        rightNow.month.toString().padLeft(2, '0');
                    final String day = rightNow.day.toString().padLeft(2, '0');

                    String key = "$year-$month-$day";

                    SpecialDay specialDay = specialDays[key] ??
                        SpecialDay(
                          schedule: getScheduleTypeForToday(rightNow),
                          displayText: "",
                        );

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: buildLogo(),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: buildTime(rightNow),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: AutoSizeText(
                                      textAlign: TextAlign.center,
                                      specialDay.displayText,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                          padding: EdgeInsets.all(8.0),
                                          child: buildDate(rightNow))),
                                ],
                              ),
                              Expanded(
                                  flex: 1,
                                  child: buildDisplay(rightNow, specialDay)),
                            ],
                          ),
                        ),
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
      // bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  void _openModal(BuildContext context, String schedule) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          height: 200,
          child: Center(
            child: Text(
              'Showing $schedule',
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: '1st Lunch',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: '2nd Lunch',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: '3rd Lunch',
        ),
      ],
      onTap: (index) {
        // Handle button taps
        switch (index) {
          case 0:
            _openModal(context, 'Schedule 1');
            break;
          case 1:
            _openModal(context, 'Schedule 2');
            break;
          case 2:
            _openModal(context, 'Schedule 3');
            break;
        }
      },
    );
  }
}
