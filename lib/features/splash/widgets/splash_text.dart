import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashText extends StatelessWidget {
  const SplashText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Kindness ',
                style: GoogleFonts.montserrat(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.headerText,
                ),
              ),
              TextSpan(
                text: 'Collective',
                style: GoogleFonts.montserrat(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryGradient[0],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          'Make an impact with every gesture.',
          style: GoogleFonts.montserrat(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.lightText,
          ),
        ),
      ],
    );
  }
}
