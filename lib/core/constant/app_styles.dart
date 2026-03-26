import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle font20BoldHeader = GoogleFonts.montserrat(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.headerText,
  );

  static TextStyle font12LightText = GoogleFonts.montserrat(
    fontSize: 12.sp,
    color: AppColors.lightText,
  );

  static TextStyle font12SemiBoldPrimary = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );
  
  static TextStyle font16SemiBoldHeader = GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.headerText,
  );
  
  static TextStyle font14RegularLight = GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightText,
  );

  static TextStyle font10SemiBoldNavbar = GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle font10BoldGrey = GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey[200],
  );

  static TextStyle font16BoldPrimary = GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
}
