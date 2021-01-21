import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/global/globalController.dart';

import '../utils/theme.dart';

class AppBottomNavBar extends StatelessWidget {
  final GlobalController controller = Get.put(GlobalController());
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
      ),
      child: GetBuilder<GlobalController>(
        builder: (s) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: AppTheme.white,
                ),
                label: 'Test'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: AppTheme.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: AppTheme.white,
                ),
                label: 'Test'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: AppTheme.white,
                ),
                label: 'Test'),
          ],
          fixedColor: AppTheme.white,
          backgroundColor: AppTheme.navBarDarkGrey,
          currentIndex: controller.navBarIndex,
          onTap: (int value) {
            controller.onNavBarClick(value);
          },
        ),
      ),
    );
  }
}
