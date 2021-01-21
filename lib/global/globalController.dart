import 'package:get/get.dart';
import 'package:logger/logger.dart';

class GlobalController extends GetxController {
  final logger = Get.find<Logger>();
  int navBarIndex = 0;

  GlobalController();

  @override
  void onInit() {
    logger.d('GlobalController onInit');
    super.onInit();
  }

  @override
  void onClose() {
    logger.d('GlobalController onClose');
    super.onClose();
  }

  void onNavBarClick(int index) {
    navBarIndex = index;
    update();
  }
}
