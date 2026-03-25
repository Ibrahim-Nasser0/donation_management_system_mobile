import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowedTitle extends StatelessWidget {
  const FollowedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Sanctuary',
          style: GoogleFonts.montserrat(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
        Gap(8.h),
        Text(
          'Every heart you\'ve touched and every journey you\'re walking alongside.',
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            color: AppColors.lightText,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
