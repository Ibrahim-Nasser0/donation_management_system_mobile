import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80.w,
          height: 80.h,
          decoration: BoxDecoration(
            color: const Color(0xFF2E7D6F),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF2E7D6F).withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Icon(
            Icons.volunteer_activism_outlined,
            color: Colors.white,
            size: 40.sp,
          ),
        ),
        Gap(30.h),
        Text(
          'Join the Sanctuary',
          style: GoogleFonts.montserrat(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
        Gap(12.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Text(
            'Create an account to start your journey of impactful giving.',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              color: AppColors.lightText,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
