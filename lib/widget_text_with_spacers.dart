import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TextWithSpacers extends StatelessWidget {
  final String text;
  final AutoSizeGroup? textGroup; // Optional if you use text groups

  const TextWithSpacers({
    super.key,
    required this.text,
    this.textGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
      children: [
        Spacer(flex: 2),
        Expanded(
          flex: 3,
          child: AutoSizeText(
            text,
            style: TextStyle(
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            group: textGroup,
          ),
        ),
        Spacer(flex: 2),
      ],
    ));
  }
}
