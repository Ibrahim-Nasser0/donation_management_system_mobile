import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
              style: GoogleFonts.montserrat(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E7D6F),
              ),
            ),
            Text(
              amountText,
              style: GoogleFonts.montserrat(
                fontSize: 10.sp,
                color: AppColors.headerText,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        ClipRRect(
          borderRadius: BorderRadius.circular(4.r),
          child: LinearProgressIndicator(
            value: percentage,
            backgroundColor: const Color(0xFFE0E0E0),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF2E7D6F)),
            minHeight: 6.h,
          ),
        ),
      ],
    );
  }
}
