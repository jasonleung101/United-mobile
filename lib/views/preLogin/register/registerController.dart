import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class RegisterController extends GetxController {
  final logger = Get.find<Logger>();

  final usernameInputController = TextEditingController();
  final passwordInputController = TextEditingController();
  final repeatInputController = TextEditingController();

  final isBtnEnable = false.obs;

  RegisterController();

  @override
  void onInit() {
    logger.d('RegisterController onInit');
    super.onInit();
  }

  @override
  void onClose() {
    logger.d('RegisterController onClose');
    super.onClose();
  }
}
