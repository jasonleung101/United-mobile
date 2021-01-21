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
                  Icons.home,
                  color: AppTheme.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: AppTheme.white,
                ),
                label: 'Todo'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view,
                  color: AppTheme.white,
                ),
                label: 'Manu'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: AppTheme.white,
                ),
                label: 'Me'),
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
