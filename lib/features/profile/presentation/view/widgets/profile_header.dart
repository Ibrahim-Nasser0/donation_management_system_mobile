import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 70.r,
                backgroundImage: const AssetImage('assets/images/profile.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.w),
              decoration: const BoxDecoration(
                color: Color(0xFF00695C),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.check, color: Colors.white, size: 18.sp),
            ),
          ],
        ),
        Gap(24.h),
        Text(
          'Marcus Thorne',
          style: GoogleFonts.montserrat(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
        Gap(4.h),
        Text(
          'marcus.thorne@sanctuary.io',
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            color: AppColors.lightText,
          ),
        ),
        Gap(20.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: const Color(0xFFE0F2F1),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: const Color(0xFF00695C), size: 18.sp),
              Gap(8.w),
              Text(
                'VISIONARY DONOR',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF00695C),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
