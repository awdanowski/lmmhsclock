import 'package:flutter/material.dart';

Row buildLogo() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: SizedBox(),
      ),
      Expanded(
        flex: 2,
        child: Image(
          image: AssetImage("images/L_with_Lenox.png"),
        ),
      ),
      Expanded(
        flex: 1,
        child: SizedBox(),
      )
    ],
  );
}
