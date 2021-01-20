import 'package:flutter/material.dart';

extension AppExtension on Widget {
  Widget addPaddingToTheWidget(
      double top, double right, double bottom, double left) {
    // return Padding(up ?? 0, right ?? 0, bottom ?? 0, left ?? 0);
    return Padding(
      padding:
          EdgeInsets.fromLTRB(left ?? 0, top ?? 0, right ?? 0, bottom ?? 0),
      child: this,
    );
  }
}
