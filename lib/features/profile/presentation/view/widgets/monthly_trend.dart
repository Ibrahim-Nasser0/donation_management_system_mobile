import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/bouncy_button.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/trend_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MonthlyTrend extends StatelessWidget {
  const MonthlyTrend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Monthly Trend', style: AppStyles.font20BoldHeader),
        Gap(20.h),
        Container(
          padding: EdgeInsets.all(24.w),
          decoration: BoxDecoration(
            color: const Color(0xFFF1F4F8).withOpacity(0.5),
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Column(
            children: [
              const TrendListItem(
                date: 'AUGUST 2023',
                title: 'High Growth Month',
                points: '+120',
              ),
              Gap(16.h),
              const TrendListItem(
                date: 'JULY 2023',
                title: 'Steady Giving',
                points: '+45',
              ),
              Gap(16.h),
              const TrendListItem(
                date: 'JUNE 2023',
                title: 'Summer Campaign',
                points: '+88',
              ),
              Gap(16.h),
              const TrendListItem(
                date: 'JUNE 2023',
                title: 'Summer Campaign',
                points: '+88',
              ),
              Gap(16.h),
              const TrendListItem(
                date: 'JUNE 2023',
                title: 'Summer Campaign',
                points: '+88',
              ),
              Gap(30.h),
              const _DownloadButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _DownloadButton extends StatelessWidget {
  const _DownloadButton();

  @override
  Widget build(BuildContext context) {
    return BouncyButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: const Color(0xFF121212),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Center(
          child: Text(
            'Download History (PDF)',
            style: AppStyles.font14RegularLight.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
