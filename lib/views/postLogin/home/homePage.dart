import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager_mobile/global/globalController.dart';
import 'package:password_manager_mobile/widgets/appBottomNavBar.dart';

import '../../../utils/theme.dart';

class HomePage extends StatelessWidget {
  final GlobalController controller = Get.put(GlobalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkGrey,
      bottomNavigationBar: AppBottomNavBar(),
      body: Container(),
    );
  }
}
