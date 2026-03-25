import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentHeaderSection extends StatelessWidget {
  final String title;
  final String initiativeName;
  final String impactDescription;

  const PaymentHeaderSection({
    super.key,
    required this.title,
    required this.initiativeName,
    required this.impactDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.headerText,
              height: 1.2,
            ),
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                color: AppColors.lightText,
                height: 1.5,
              ),
              children: [
                const TextSpan(text: 'You\'re supporting the '),
                TextSpan(
                  text: initiativeName,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2E7D6F),
                  ),
                ),
                TextSpan(text: '. $impactDescription'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
