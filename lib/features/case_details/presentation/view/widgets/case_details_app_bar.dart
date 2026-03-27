import 'dart:ui';
import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/bouncy_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseDetailsAppBar extends StatelessWidget {
  const CaseDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white.withValues(alpha: 0.7),
      pinned: true,
      elevation: 0,
      stretch: true,
      centerTitle: false,
      expandedHeight: 0, // Keep it pinned style but glassy
      flexibleSpace: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.white.withValues(alpha: 0.1),
          ),
        ),
      ),
      leadingWidth: 200.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            BouncyButton(
              onPressed: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_rounded,
                  color: const Color(0xFF2E7D6F), size: 24.sp),
            ),
            SizedBox(width: 12.w),
            Text(
              'Case Details',
              style: GoogleFonts.montserrat(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.headerText,
              ),
            ),
          ],
        ),
      ),
      actions: [
        BouncyButton(
          onPressed: () {},
          child: Icon(Icons.share_outlined,
              color: AppColors.headerText, size: 24.sp),
        ),
        SizedBox(width: 8.w),
        Container(
          margin: EdgeInsets.only(right: 16.w),
          decoration: BoxDecoration(
            color: const Color(0xFFE0C097),
            shape: BoxShape.circle,
          ),
          child: BouncyButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Icon(Icons.bookmark_outline_rounded,
                  color: Colors.white, size: 22.sp),
            ),
          ),
        ),
      ],
    );
  }
}
