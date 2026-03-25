import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseDescriptionText extends StatelessWidget {
  final String text;

  const CaseDescriptionText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      sliver: SliverToBoxAdapter(
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            color: AppColors.headerText,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
