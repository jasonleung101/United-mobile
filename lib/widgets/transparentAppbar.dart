import 'package:flutter/material.dart';
import 'package:password_manager_mobile/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSize transparentAppbar(
    {@required Text title, @required Widget leading, List<Widget> actions}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(140.h),
    child: AppBar(
      title: title,
      backgroundColor: AppTheme.darkGrey,
      elevation: 0.0,
      leading: leading,
      automaticallyImplyLeading: false,
      centerTitle: true,
    ),
  );
}
