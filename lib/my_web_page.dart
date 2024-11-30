import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/stream_current_time.dart';
import 'package:lmmhsclock/widget_logo_and_time.dart';

import 'build_display.dart';
import 'domain/class_message_and_date.dart';
import 'domain/function_get_message_and_date.dart';

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
                          child: LogoAndTime(),
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
                    MessageAndDate messageAndDate = getMessageAndDate(rightNow);

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: LogoAndTime(time: rightNow),
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
                                        messageAndDate.dailyMessage,
                                        maxLines: 1,
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
                                        child: AutoSizeText(
                                          textAlign: TextAlign.center,
                                          messageAndDate.currentDateString,
                                          maxLines: 1,
                                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: buildDisplay(rightNow, messageAndDate.currentSchedule),
                              ),
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
      bottomNavigationBar: null,
    );
  }
}

class DateTimeWidget extends StatelessWidget {
  final DateTime? dateTime;

  // Constructor that takes an optional DateTime
  const DateTimeWidget({super.key, this.dateTime});

  @override
  Widget build(BuildContext context) {
    // If no DateTime is passed, return an empty container
    if (dateTime == null) {
      return Container();
    }

    // If a DateTime is passed, return a Column with the date formatted
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'DateTime: ${dateTime.toString()}',
          style: TextStyle(fontSize: 20),
        ),
        // You can add more widgets here if needed
      ],
    );
  }
}