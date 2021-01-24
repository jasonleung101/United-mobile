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
                  Icons.credit_card,
                  color: AppTheme.white,
                ),
                label: 'Spend'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: AppTheme.white,
                ),
                label: 'Save'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
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
          currentIndex: controller.selectedIndex,
          onTap: (int value) {
            controller.onNavBarClick(value);
          },
        ),
      ),
    );
  }
}
