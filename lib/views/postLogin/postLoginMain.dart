import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/global/globalController.dart';
import 'package:password_manager_mobile/utils/appDialogUtils.dart';
import 'package:password_manager_mobile/utils/theme.dart';
import 'package:password_manager_mobile/views/postLogin/menu/menuLandingPage.dart';
import 'package:password_manager_mobile/views/postLogin/save/saveLandingPage.dart';
import 'package:password_manager_mobile/views/postLogin/spend/spendLandingPage.dart';
import 'package:password_manager_mobile/views/preLogin/landingPage.dart';
import 'package:password_manager_mobile/widgets/appBottomNavBar.dart';

class PostLoginMainPage extends StatelessWidget {
  final GlobalController controller = Get.put(GlobalController());
  final pages = [
    SpendLandingPage(),
    SaveLandingPage(),
    MenuLandingPage(),
    MenuLandingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool isSignOut = await AppDialogUtils.showSignOutDialog(context,
            topic: "Sign Out?",
            content: "Do you want to sign out?",
            cancelString: "No",
            confirmString: "Yes");
        if (isSignOut == null) {
          return false;
        } else {
          Get.offAll(FirstPage());
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: AppTheme.darkGrey,
        bottomNavigationBar: AppBottomNavBar(),
        body: SizedBox.expand(
          child: PageView(
            controller: controller.pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              controller.onNavBarClick(index);
            },
            children: pages,
          ),
        ),
      ),
    );
  }
}
