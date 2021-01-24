import 'dart:io';

import 'package:get/get.dart';
import 'package:password_manager_mobile/views/postLogin/me/meLandingPage.dart';
import 'package:password_manager_mobile/views/postLogin/menu/menuLandingPage.dart';
import 'package:password_manager_mobile/views/postLogin/postLoginMain.dart';
import 'package:password_manager_mobile/views/postLogin/save/saveLandingPage.dart';
import 'package:password_manager_mobile/views/postLogin/spend/spendLandingPage.dart';
import 'package:password_manager_mobile/views/preLogin/landingPage.dart';
import 'package:password_manager_mobile/views/preLogin/login/loginPage.dart';
import 'package:password_manager_mobile/views/preLogin/register/registerPage.dart';

typedef RoutingCallBack = Function(Routing);

class AppRoute {
  static final _transitionDuration = Platform.isIOS
      ? Duration(milliseconds: 200)
      : Duration(milliseconds: 400);

  static final homePage = '/';
  static final signUp = '/sign_up';
  static final logIn = '/log_in';
  static final home = '/home';
  static final spend = '/spend';
  static final save = '/save';
  static final menu = '/menu';
  static final me = '/me';

  static final List<GetPage> getPages = [
    GetPage(
        name: homePage,
        page: () => FirstPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: signUp,
        page: () => RegisterPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: logIn,
        page: () => LoginPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: home,
        page: () => PostLoginMainPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: spend,
        page: () => SpendLandingPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: save,
        page: () => SaveLandingPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: menu,
        page: () => MenuLandingPage(),
        transitionDuration: _transitionDuration),
    GetPage(
        name: me,
        page: () => MeLandingPage(),
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
