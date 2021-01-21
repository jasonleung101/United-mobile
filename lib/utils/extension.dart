import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_manager_mobile/utils/theme.dart';

extension AppExtension on Widget {
  Widget addPaddingToTheWidget(
      {double top, double right, double bottom, double left}) {
    return Padding(
      padding:
          EdgeInsets.fromLTRB(left ?? 0, top ?? 0, right ?? 0, bottom ?? 0),
      child: this,
    );
  }

  Widget addAvatar() {
    return Stack(
      children: [
        this,
        Align(
          alignment: Alignment.topLeft,
          child: CircleAvatar(
            radius: 65.w,
            backgroundColor: AppTheme.darkGrey,
            child: IconButton(
              icon: Icon(Icons.person, size: 65.w, color: AppTheme.white),
              onPressed: () {},
            ),
          ),
        ).addPaddingToTheWidget(top: 120.h, right: 0, bottom: 0, left: 60.w),
      ],
    );
  }
}
