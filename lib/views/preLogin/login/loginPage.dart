import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/utils/appUtils.dart';
import 'package:password_manager_mobile/widgets/appTextFormField.dart';
import 'package:password_manager_mobile/widgets/transparentAppbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loginController.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppbar(
          title: Text(
            "Login",
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextFormField(
            textController: controller.usernameInputController,
            labelText: "Username",
          ).addPaddingToTheWidget(top: 0, right: 0, bottom: 36.h, left: 0),
          AppTextFormField(
            textController: controller.passwordInputController,
            labelText: "Password",
            onChanged: (String val) {
              if (val.isNotEmpty && val != null) {
                controller.isBtnEnable(true);
              } else {
                controller.isBtnEnable(false);
              }
            },
          ).addPaddingToTheWidget(top: 0, right: 0, bottom: 36.h, left: 0),
          Obx(
            () => RaisedButton(
              child: Text(
                "Log in",
                style: AppUtils.textTheme.button,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0)),
              onPressed: controller.isBtnEnable.value
                  ? () {
                      Get.toNamed('/home');
                    }
                  : null,
            ),
          ),
        ],
      ).addPaddingToTheWidget(top: 0, right: 24.w, bottom: 0, left: 24.w),
    );
  }
}
