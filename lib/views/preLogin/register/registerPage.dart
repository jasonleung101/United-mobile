import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/utils/appUtils.dart';
import 'package:password_manager_mobile/utils/theme.dart';
import 'package:password_manager_mobile/widgets/appTextFormField.dart';
import 'package:password_manager_mobile/widgets/transparentAppbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'registerController.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppbar(
          title: Text(
            "Register",
            style: AppUtils.textTheme.headline3,
          ),
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            iconSize: 90.w,
            onPressed: () {
              Get.back();
            },
          )),
      body: Column(
        children: [
          AppTextFormField(
              labelText: "Username",
              hintText: "Username",
              textController: controller.usernameInputController,
              onChanged: (String val) {
                if (val.isNotEmpty && val != null) {
                  controller.isBtnEnable(true);
                } else {
                  controller.isBtnEnable(false);
                }
              }).addPaddingToTheWidget(top: 0, right: 0, bottom: 36.h, left: 0),
          AppTextFormField(
              labelText: "Password",
              hintText: "Password",
              textController: controller.passwordInputController,
              obscureText: true,
              onChanged: (String val) {
                if (val.isNotEmpty && val != null) {
                  controller.isBtnEnable(true);
                } else {
                  controller.isBtnEnable(false);
                }
              }).addPaddingToTheWidget(top: 0, right: 0, bottom: 36.h, left: 0),
          AppTextFormField(
                  labelText: "Repeat Password",
                  hintText: "Repeat your password",
                  textController: controller.repeatInputController,
                  onChanged: (String val) {
                    if (val.isNotEmpty && val != null) {
                      controller.isBtnEnable(true);
                    } else {
                      controller.isBtnEnable(false);
                    }
                  },
                  obscureText: true)
              .addPaddingToTheWidget(top: 0, right: 0, bottom: 72.h, left: 0),
          SizedBox(
            width: AppUtils.screenWidth * 0.8,
            child: Obx(() => RaisedButton(
                  child: Text(
                    "Sign up",
                    style: AppUtils.textTheme.button,
                  ),
                  onPressed: controller.isBtnEnable.value
                      ? () {
                          Get.focusScope.unfocus();
                          if (controller.repeatInputController.text !=
                              controller.passwordInputController.text) {
                            Get.defaultDialog(
                                title: "Error!",
                                titleStyle: TextStyle(color: AppTheme.darkGrey),
                                middleText: "Password mismatch",
                                middleTextStyle:
                                    TextStyle(color: AppTheme.darkGrey),
                                textConfirm: "OK",
                                confirmTextColor: AppTheme.white,
                                onConfirm: () {
                                  Get.close(1);
                                },
                                barrierDismissible: false);
                          } else {
                            print("Yeah");
                          }
                        }
                      : null,
                )),
          ),
        ],
      ).addPaddingToTheWidget(top: 48.h, right: 48.w, bottom: 0, left: 48.w),
    );
  }
}
