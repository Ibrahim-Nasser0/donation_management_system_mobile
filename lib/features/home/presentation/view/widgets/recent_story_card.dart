import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/donation_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:donation_management_system_mobile/core/utils/app_router.dart';

class RecentStoryCard extends StatelessWidget {
  final String? category;
  final String title;
  final String description;
  final String percentageText;
  final String amountText;
  final double percentage;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;

  const RecentStoryCard({
    super.key,
    this.category,
    required this.title,
    required this.description,
    required this.percentageText,
    required this.amountText,
    required this.percentage,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRouter.caseDetailsView),
      child: Container(
        margin: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
            child: Container(
              height: 180.h,
              width: double.infinity,
              color: Colors.grey[300], // Placeholder for image
              child: Center(
                child: Icon(Icons.image, color: Colors.grey[500], size: 40.sp),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (category != null) ...[
                  Text(
                    category!.toUpperCase(),
                    style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1976D2), // Blue tag
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.headerText,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  description,
                  style: GoogleFonts.montserrat(
                    fontSize: 12.sp,
                    color: AppColors.lightText,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16.h),
                DonationProgressBar(
                  percentageText: percentageText,
                  amountText: amountText,
                  percentage: percentage,
                ),
                SizedBox(height: 16.h),
                CustomButton(
                  text: buttonText,
                  onPressed: () {},
                  backgroundColor: buttonColor,
                  textColor: buttonTextColor,
                ),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
