import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseTitleSection extends StatelessWidget {
  final String title;

  const CaseTitleSection({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
            height: 1.3,
          ),
        ),
      ),
    );
  }
}
