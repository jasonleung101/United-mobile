import 'package:flutter/material.dart';
import 'package:password_manager_mobile/views/preLogin/landingPage.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../utils/theme.dart';

class AppSplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: FirstPage(),
      backgroundColor: AppTheme.darkGrey,
      loaderColor: AppTheme.white,
      loadingText: Text(
        'Starting app',
        style: TextStyle(color: AppTheme.white),
      ),
    );
  }
}
