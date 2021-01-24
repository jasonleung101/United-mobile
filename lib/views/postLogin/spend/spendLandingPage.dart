import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/utils/appUtils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class SpendLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 600.h,
            width: Get.width,
            child: Container(
              color: AppTheme.lightGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spending on this week',
                    style: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(60, allowFontScalingSelf: true),
                    ),
                  ),
                  Text(
                    AppUtils.currencyFormat.format(123),
                    style: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(90, allowFontScalingSelf: true),
                    ),
                  ),
                ],
              ).addPaddingToTheWidget(left: 48.w, bottom: 48.h),
            ),
          ),
          Text(
            "Recommanded",
            style: TextStyle(
              fontSize: ScreenUtil().setSp(60, allowFontScalingSelf: true),
              color: AppTheme.white_50,
            ),
          ).addPaddingToTheWidget(left: 48.w, top: 12.h),
        ],
      ),
    ).addAvatar();
  }
}
