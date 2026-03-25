import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilePrivacyCard extends StatelessWidget {
  const EditProfilePrivacyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F4F8).withOpacity(0.8),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.shield_outlined, color: const Color(0xFF2E7D6F), size: 24.sp),
          Gap(16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Data Privacy',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.headerText,
                  ),
                ),
                Gap(4.h),
                Text(
                  'Your personal details are encrypted and only used for tax receipts and communication preferences.',
                  style: GoogleFonts.montserrat(
                    fontSize: 12.sp,
                    color: AppColors.lightText,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
