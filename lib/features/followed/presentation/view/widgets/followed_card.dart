import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowedCard extends StatelessWidget {
  final String title;
  final String description;
  final String fundedInfo;
  final double progress;
  final String amount;
  final Color themeColor;
  final String? badge;
  final IconData? illustration;

  const FollowedCard({
    super.key,
    required this.title,
    required this.description,
    required this.fundedInfo,
    required this.progress,
    required this.amount,
    required this.themeColor,
    this.badge,
    this.illustration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCover(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildCover() {
    return Container(
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: themeColor.withOpacity(0.6),
        borderRadius: BorderRadius.vertical(top: Radius.circular(40.r)),
      ),
      child: Stack(
        children: [
          if (illustration != null)
            Center(
              child: Icon(illustration, size: 80.sp, color: Colors.white.withOpacity(0.5)),
            ),
          if (badge != null)
            Positioned(
              top: 20.h,
              left: 20.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  badge!.toUpperCase(),
                  style: GoogleFonts.montserrat(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          Positioned(
            top: 20.h,
            right: 20.w,
            child: Icon(Icons.bookmark, color: const Color(0xFF2E7D6F), size: 24.sp),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.headerText,
            ),
          ),
          Gap(12.h),
          Text(
            description,
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              color: AppColors.lightText,
              height: 1.5,
            ),
          ),
          Gap(24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                fundedInfo,
                style: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2E7D6F),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: amount,
                      style: GoogleFonts.montserrat(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.headerText,
                      ),
                    ),
                    TextSpan(
                      text: ' / 50K GOAL',
                      style: GoogleFonts.montserrat(
                        fontSize: 9.sp,
                        color: AppColors.lightText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(12.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[100],
              valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF2E7D6F)),
              minHeight: 6.h,
            ),
          ),
          Gap(24.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.eco_outlined, size: 18.sp),
              label: Text(
                'Donate Again',
                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2E7D6F),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
