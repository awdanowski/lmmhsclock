import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MinuteTile extends StatelessWidget {
  final String text;
  final AutoSizeGroup group;

  const MinuteTile({
    super.key,
    required this.text,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: AutoSizeText(
          "$text mins",
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22),
          group: group,
        ),
      ),
    );
  }
}
