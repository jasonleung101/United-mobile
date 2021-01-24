import 'package:flutter/material.dart';
import 'package:password_manager_mobile/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_manager_mobile/utils/appUtils.dart';

class RecommandedCard extends StatelessWidget {
  final IconData iconData;
  final Text title;
  final int index;

  const RecommandedCard({Key key, this.iconData, this.title, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      height: 500.h,
      child: GestureDetector(
        child: Card(
          margin: EdgeInsets.all(16.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                color: AppTheme.lightGrey,
                size: 144.w,
              ).addPaddingToTheWidget(bottom: 24.h),
              title
            ],
          ),
        ),
        onTap: () {
          print(index);
        },
      ),
    );
  }
}
