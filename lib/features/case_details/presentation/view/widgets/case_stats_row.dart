import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseStatsRow extends StatelessWidget {
  const CaseStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildStatPill(
              icon: Icons.access_time,
              iconColor: const Color(0xFF2E7D6F),
              line1: '14',
              line2: 'Days\nLeft',
            ),
            _buildStatPill(
              icon: Icons.people_outline,
              iconColor: const Color(0xFF1976D2),
              line1: '1,240',
              line2: 'Backers',
            ),
            _buildStatPill(
              icon: Icons.location_on_outlined,
              iconColor: const Color(0xFFC67C4E),
              line1: 'Hope',
              line2: 'Valley, UK',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatPill({
    required IconData icon,
    required Color iconColor,
    required String line1,
    required String line2,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: Colors.grey[200]!, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor, size: 20.sp),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                line1,
                style: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.headerText,
                ),
              ),
              Text(
                line2,
                style: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  color: AppColors.lightText,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
