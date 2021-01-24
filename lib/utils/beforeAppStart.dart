import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:password_manager_mobile/global/globalController.dart';

Future<void> configEnvironmentAndDependencies() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.grey[850],
  ));
  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      colors: false,
      printEmojis: true,
    ),
  );
  Get.put<Logger>(logger);
  Get.put<GlobalController>(GlobalController(), permanent: true);
  logger.i("Finish config, starting app now");
}
