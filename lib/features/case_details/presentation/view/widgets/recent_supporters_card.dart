import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SupporterTile extends StatelessWidget {
  final String name;
  final String details;
  final String avatarInitials;

  const SupporterTile({
    super.key,
    required this.name,
    required this.details,
    required this.avatarInitials,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.grey[200],
            child: Text(
              avatarInitials,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                  color: AppColors.headerText,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                details,
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  color: AppColors.lightText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RecentSupportersCard extends StatelessWidget {
  const RecentSupportersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(bottom: 40.h),
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(24.w),
          decoration: BoxDecoration(
            color: const Color(0xFFF7F9FB), // Slightly darker background to distinguish or entirely flat depending on mockup
            borderRadius: BorderRadius.circular(32.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Supporters',
                style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.headerText,
                ),
              ),
              SizedBox(height: 24.h),
              const SupporterTile(
                name: 'Liam Peterson',
                details: 'Donated £250 • 2h ago',
                avatarInitials: 'LP',
              ),
              const SupporterTile(
                name: 'Anonymous Joy',
                details: 'Donated £50 • 5h ago',
                avatarInitials: 'AJ',
              ),
              SizedBox(height: 16.h),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all 1,240 donors',
                    style: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2E7D6F),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
