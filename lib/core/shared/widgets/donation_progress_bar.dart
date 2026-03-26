import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationProgressBar extends StatelessWidget {
  final String percentageText;
  final String amountText;
  final double percentage; // 0.0 to 1.0

  const DonationProgressBar({
    super.key,
    required this.percentageText,
    required this.amountText,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              percentageText,
              style: AppStyles.font12SemiBoldPrimary,
            ),
            Text(
              amountText,
              style: AppStyles.font12LightText,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Stack(
          children: [
            Container(
              height: 8.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeOutCubic,
              height: 8.h,
              width: percentage.clamp(0.0, 1.0) * (MediaQuery.of(context).size.width - 80.w), // Approximate width adjustment
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: AppColors.primaryGradient,
                ),
                borderRadius: BorderRadius.circular(4.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryColor.withValues(alpha: 0.2),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
