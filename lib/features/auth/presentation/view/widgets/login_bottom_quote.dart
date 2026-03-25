import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginBottomQuote extends StatelessWidget {
  const LoginBottomQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Text(
        '"Small acts, when multiplied by millions of people, can transform the world."',
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          fontSize: 12.sp,
          fontStyle: FontStyle.italic,
          color: AppColors.lightText.withOpacity(0.6),
        ),
      ),
    );
  }
}
