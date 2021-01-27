import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/model/spendingModel.dart';
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
          Center(
            child: SizedBox(
              width: 800.w,
              height: 800.h,
              child: charts.PieChart(
                SpendingPieChartData.initData(id: "Spending", data: [
                  SpendingPieChartData("Travel", 3000.0, Colors.grey[400]),
                  SpendingPieChartData("Food", 1000.0, Colors.grey[500]),
                  SpendingPieChartData("Others", 666.0, Colors.grey[600]),
                ]),
                animate: false,
                defaultRenderer: new charts.ArcRendererConfig(
                    arcWidth: 80,
                    arcRendererDecorators: [
                      new charts.ArcLabelDecorator(
                          insideLabelStyleSpec: charts.TextStyleSpec(
                              fontSize: 12, color: charts.Color.white)),
                    ]),
              ),
            ),
          ).addPaddingToTheWidget(top: 36.h),
        ],
      ),
    ).addAvatar();
  }
}
