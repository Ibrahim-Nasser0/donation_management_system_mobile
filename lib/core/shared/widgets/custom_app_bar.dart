import 'package:donation_management_system_mobile/core/constant/app_assets.dart';
import 'package:donation_management_system_mobile/core/constant/app_sizes.dart';
import 'package:donation_management_system_mobile/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding.w),
      child: Row(
        children: [
          Image.asset(AppAssets.logo, height: AppSizes.logoHeight.h),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchView);
            },
            icon: Icon(
              // FontAwesomeIcons.magnifyingGlass,
              Icons.add_ic_call,
              size: AppSizes.mediumIconSize.h,
            ),
          ),
        ],
      ),
    );
  }
}
