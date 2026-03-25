import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashLoadingIndicator extends StatelessWidget {
  final double progress;
  const SplashLoadingIndicator({super.key, this.progress = 0.3});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 0.8.sw,
          height: 4.h,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 0.8.sw * progress,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryGradient[0],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'CURATING YOUR STORIES',
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.lightText.withValues(alpha: 0.6),
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}
