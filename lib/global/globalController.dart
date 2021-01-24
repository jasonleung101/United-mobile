import 'package:get/get.dart';
import 'package:logger/logger.dart';

class GlobalController extends GetxController {
  final logger = Get.find<Logger>();
  final _navBarIndex = 0.obs;
  set selectedIndex(value) => this._navBarIndex.value = value;
  get selectedIndex => this._navBarIndex.value;

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
    this.selectedIndex = index;
    update();
  }
}
