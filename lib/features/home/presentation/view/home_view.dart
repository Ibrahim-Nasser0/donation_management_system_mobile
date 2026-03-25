import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/home_header.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/urgent_cases_section.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/recent_stories_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              Gap(24.h),
              const UrgentCasesSection(),
              Gap(32.h),
              const RecentStoriesSection(),
              Gap(32.h),
            ],
          ),
        ),
      ),
    );
  }
}
