import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/my_web_page.dart';
import 'package:lmmhsclock/theme.dart';

import 'my_home_page.dart';

void main() => runApp(const MyApp());

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
      home: buildMyHomePage(),
    );
  }

  Widget buildMyHomePage() {
    if (!kIsWeb) {
      return const MyHomePage(title: 'LMMHS');
    } else {
      return const MyWebPage(title: 'LMMHS');
    }
  }
}
