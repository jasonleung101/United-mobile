import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
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
                ).addPaddingToTheWidget(
                    top: 0, right: 0, bottom: 48.h, left: 0),
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
              ).addPaddingToTheWidget(top: 0, right: 0, bottom: 48.h, left: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 125.h,
                    width: 125.w,
                    child: SignInButton(
                      Buttons.AppleDark,
                      mini: true,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                    ),
                  ).addPaddingToTheWidget(left: 24.w, right: 24.w),
                  SizedBox(
                    height: 125.h,
                    width: 125.w,
                    child: SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                    ),
                  ).addPaddingToTheWidget(left: 24.w, right: 24.w),
                  SizedBox(
                    height: 125.h,
                    width: 125.w,
                    child: SignInButton(
                      Buttons.GitHub,
                      onPressed: () {},
                      mini: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                    ),
                  ).addPaddingToTheWidget(left: 24.w, right: 24.w),
                  SizedBox(
                    height: 125.h,
                    width: 125.w,
                    child: SignInButton(
                      Buttons.LinkedIn,
                      onPressed: () {},
                      mini: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                    ),
                  ).addPaddingToTheWidget(left: 24.w, right: 24.w),
                ],
              ).addPaddingToTheWidget(bottom: 36.h),
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
          ).addPaddingToTheWidget(top: 0, right: 0, bottom: 86.h, left: 0),
        ),
      ),
    );
  }
}
