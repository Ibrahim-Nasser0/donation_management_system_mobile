import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/utils/app_router.dart';
import 'package:donation_management_system_mobile/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: AppColors.backgroundColor,
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
