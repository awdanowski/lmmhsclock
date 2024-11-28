import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/stream_current_time.dart';

import 'build_date.dart';
import 'build_display.dart';
import 'build_logo.dart';
import 'build_time.dart';
import 'domain/class_special_days.dart';
import 'domain/map_special_days.dart';
import 'function_get_schedule_type.dart';

class MyWebPage extends StatefulWidget {
  const MyWebPage({super.key, required this.title});

  final String title;

  @override
  State<MyWebPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyWebPage> {
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
                    final String month = rightNow.month.toString().padLeft(2, '0');
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
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: AutoSizeText(
                                        textAlign: TextAlign.center,
                                        specialDay.displayText,
                                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            padding: EdgeInsets.all(8.0),
                                            child: buildDate(rightNow))),
                                  ],
                                ),
                              ),
                              Expanded(flex: 5, child: buildDisplay(rightNow, specialDay)),
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
