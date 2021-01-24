import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/utils/appUtils.dart';
import 'package:password_manager_mobile/utils/theme.dart';

class AppDialogUtils {
  static Future<bool> showSignOutDialog(BuildContext context,
      {String topic,
      String content,
      String confirmString,
      String cancelString}) {
    return Get.dialog<bool>(
      customAlertDialog(context,
          topic: topic,
          content: content,
          confirmString: confirmString,
          cancelString: cancelString),
      barrierDismissible: false,
    );
  }

  static Widget customAlertDialog(BuildContext context,
      {String topic,
      String content,
      String confirmString,
      String cancelString}) {
    return AlertDialog(
      title: Text(
        topic,
        style: AppUtils.textTheme.headline3.copyWith(color: AppTheme.darkGrey),
      ),
      content: Text(
        content,
        style: AppUtils.textTheme.headline3.copyWith(color: AppTheme.darkGrey),
      ),
      actions: <Widget>[
        FlatButton(
          splashColor: Colors.transparent,
          child: Text(
            cancelString,
            style: AppUtils.textTheme.button.copyWith(color: AppTheme.darkGrey),
          ),
          onPressed: () => Navigator.of(context).pop(), // 关闭对话框
        ),
        FlatButton(
          splashColor: Colors.transparent,
          child: Text(
            confirmString,
            style: AppUtils.textTheme.button.copyWith(color: AppTheme.darkGrey),
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}
