import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_manager_mobile/utils/theme.dart';
import 'package:password_manager_mobile/views/splash/splashPage.dart';
import 'utils/beforeAppStart.dart';
import 'package:get/get.dart';
import 'utils/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await configEnvironmentAndDependencies();
  runApp(
    ScreenUtilInit(
      designSize: Size(1080, 1920),
      allowFontScaling: false,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: AppRoute.getPages,
      routingCallback: AppRoute.observer,
      theme: AppTheme.primary,
      home: AppSplashPage(),
    );
  }
}
