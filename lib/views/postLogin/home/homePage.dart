import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/global/globalController.dart';
import 'package:password_manager_mobile/widgets/appBottomNavBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/appUtils.dart';
import '../../../utils/theme.dart';

class HomePage extends StatelessWidget {
  final GlobalController controller = Get.put(GlobalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkGrey,
      bottomNavigationBar: AppBottomNavBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 600.h,
              child: Container(
                color: AppTheme.lightGrey,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Hello, User',
                    style: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(120, allowFontScalingSelf: true),
                    ),
                  ).addPaddingToTheWidget(left: 60.w, bottom: 20.h),
                ),
              ),
            ),
            Text(
              "Recommanded",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(60, allowFontScalingSelf: true),
                color: AppTheme.white_50,
              ),
            ).addPaddingToTheWidget(left: 16.w, top: 12.h),
            Container(
              width: double.infinity,
              height: 500.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 400.w,
                    child: Container(
                      child: Card(
                        margin: EdgeInsets.all(16.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ).addAvatar(),
    );
  }
}
