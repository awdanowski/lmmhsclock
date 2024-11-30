import 'package:flutter/cupertino.dart';

import 'build_logo.dart';
import 'build_time.dart';

class LogoAndTime extends StatelessWidget {
  const LogoAndTime({
    super.key,
    this.time,
  });

  final DateTime? time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: buildLogo(),
        ),
        Expanded(
          flex: 1,
          child: Builder(
            builder: (context) {
              if (time == null) {
                return Expanded(
                  flex: 1,
                  child: SizedBox(),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: buildTime(time!),
                );
              }
            },
          ),
        )
      ],
    );
  }
}
