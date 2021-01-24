import 'package:get/get.dart';
import 'package:intl/intl.dart';

export 'extension.dart';

class AppUtils {
  static final double screenHeight = Get.height;
  static final double screenWidth = Get.width;

  static final textTheme = Get.textTheme;
  static final appContext = Get.context;

  static final isAndroid = GetPlatform.isAndroid;
  static final isIOS = GetPlatform.isIOS;

  static get numberFormat {
    return NumberFormat.decimalPattern();
  }

  static get currencyFormat {
    return NumberFormat.simpleCurrency();
  }
}
