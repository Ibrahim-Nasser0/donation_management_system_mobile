import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/impact_breakdown.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/impact_promo_card.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/impact_score_card.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/monthly_trend.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MyImpactView extends StatelessWidget {
  const MyImpactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'My Impact',
          style: AppStyles.font20BoldHeader.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share_outlined, color: AppColors.primaryColor),
            onPressed: () {},
          ),
          Gap(16.w),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Gap(20.h),
              const ImpactScoreCard(),
              Gap(40.h),
              const ImpactBreakdown(),
              Gap(40.h),
              const MonthlyTrend(),
              Gap(40.h),
              const ImpactPromoCard(),
              Gap(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
