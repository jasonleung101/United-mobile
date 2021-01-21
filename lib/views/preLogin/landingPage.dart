import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/utils/appUtils.dart';
import 'package:password_manager_mobile/utils/theme.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkGrey,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 120.h,
                  child: OutlineButton(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: ScreenUtil()
                              .setSp(54, allowFontScalingSelf: true)),
                    ),
                    textColor: Colors.white,
                    borderSide: BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0)),
                    onPressed: () {
                      Get.toNamed('/sign_up');
                    },
                  ),
                ).addPaddingToTheWidget(0, 0, 48.h, 0),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 120.h,
                  child: RaisedButton(
                    child: Text(
                      "Log in",
                      style: AppUtils.textTheme.button,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0)),
                    onPressed: () {
                      Get.toNamed('/log_in');
                    },
                  ),
                ),
              ).addPaddingToTheWidget(0, 0, 48.h, 0),
              Center(
                child: SizedBox(
                  height: 60.h,
                  child: FlatButton(
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil()
                              .setSp(54, allowFontScalingSelf: false)),
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ).addPaddingToTheWidget(0, 0, 86.h, 0),
        ),
      ),
    );
  }
}
