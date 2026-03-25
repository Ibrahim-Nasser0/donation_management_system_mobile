import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _StatCard(
            title: 'TOTAL GIVEN',
            value: '\$12,450',
            valueColor: AppColors.primaryGradient[0],
          ),
        ),
        Gap(20.w),
        Expanded(
          child: _StatCard(
            title: 'LIVES IMPACTED',
            value: '428',
            valueColor: const Color(0xFF1976D2),
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const _StatCard({
    required this.title,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[300],
              letterSpacing: 0.5,
            ),
          ),
          Gap(12.h),
          Text(
            value,
            style: GoogleFonts.montserrat(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
