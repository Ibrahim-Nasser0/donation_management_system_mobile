import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ImpactPromoCard extends StatelessWidget {
  const ImpactPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(40.r),
        border: Border.all(
          color: AppColors.primaryColor.withValues(alpha: 0.1),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Double your impact?',
            textAlign: TextAlign.center,
            style: AppStyles.font20BoldHeader.copyWith(
              fontSize: 22.sp,
              color: AppColors.primaryColor,
            ),
          ),
          Gap(12.h),
          Text(
            'Join the Monthly Seedling program to unlock 2x impact multipliers on all education initiatives.',
            textAlign: TextAlign.center,
            style: AppStyles.font12LightText.copyWith(
              color: AppColors.primaryColor.withValues(alpha: 0.7),
              height: 1.5,
            ),
          ),
          Gap(24.h),
          CustomButton(
            text: 'Learn More',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
