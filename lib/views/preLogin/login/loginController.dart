import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class LoginController extends GetxController {
  final logger = Get.find<Logger>();
  final isBtnEnable = false.obs;
  final usernameInputController = TextEditingController();
  final passwordInputController = TextEditingController();

  LoginController();

  @override
  void onInit() {
    logger.d('LoginController onInit');
    super.onInit();
  }

  @override
  void onClose() {
    logger.d('LoginController onClose');
    super.onClose();
  }
}
