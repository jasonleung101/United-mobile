import 'dart:io';

import 'package:get/get.dart';
import 'package:password_manager_mobile/views/home/login/loginPage.dart';
import 'package:password_manager_mobile/views/home/register/registerPage.dart';

typedef RoutingCallBack = Function(Routing);

class AppRoute {
  static final _transitionDuration = Platform.isIOS
      ? Duration(milliseconds: 200)
      : Duration(milliseconds: 400);

  static final home_page = '/';
  static final sign_up = '/sign_up';
  static final log_in = '/log_in';

  static final List<GetPage> getPages = [
    GetPage(
        name: sign_up,
        page: () => RegisterPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: log_in,
        page: () => LoginPage(),
        transitionDuration: _transitionDuration),
  ];

  static observer(Routing routing) {
    /// You can listen in addition to the routes, the snackbars, dialogs and bottomsheets on each screen.
    ///If you need to enter any of these 3 events directly here,
    ///you must specify that the event is != Than you are trying to do.
    if (routing.current == '/second' && !routing.isSnackbar) {
      Get.snackbar("Hi", "You are on second route");
    } else if (routing.current == '/third') {
      print('last route called');
    } else if (routing.current == '/home') {}
  }
}
