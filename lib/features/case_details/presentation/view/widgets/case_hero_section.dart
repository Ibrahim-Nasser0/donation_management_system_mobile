import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseHeroSection extends StatelessWidget {
  const CaseHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 250.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300], // Image placeholder
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(32.r)),
            ),
            child: Center(
              child: Icon(Icons.image, size: 50.sp, color: Colors.grey[500]),
            ),
          ),
          Positioned(
            bottom: -24.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.verified, color: const Color(0xFF8D6E63), size: 20.sp),
                  SizedBox(width: 8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VERIFIED CAUSE',
                        style: GoogleFonts.montserrat(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.lightText,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Text(
                        'Community Trust Fund',
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.headerText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
