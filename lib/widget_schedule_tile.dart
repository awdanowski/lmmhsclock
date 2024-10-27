import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lmmhsclock/theme.dart';

class ScheduleTile extends StatelessWidget {
  final String text;

  const ScheduleTile({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0), // Fixed corner radius
      child: Container(
        padding: const EdgeInsets.all(4.0),
        color: Theme.of(context)
            .extension<AppColorsExtension>()
            ?.containerColor, // Fixed color (maroon)
        height: 50,
        child: AutoSizeText(
          text,
          maxLines: 1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
