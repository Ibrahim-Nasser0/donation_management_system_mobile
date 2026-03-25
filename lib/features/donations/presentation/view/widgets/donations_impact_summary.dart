import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationsImpactSummary extends StatelessWidget {
  const DonationsImpactSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Impact',
          style: GoogleFonts.montserrat(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
        Text(
          'Journey',
          style: GoogleFonts.montserrat(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2E7D6F),
          ),
        ),
        Gap(24.h),
        Row(
          children: [
            Expanded(
              child: _ImpactStatCard(
                label: 'TOTAL GIVEN',
                value: '\$2,450',
                color: Colors.white,
              ),
            ),
            Gap(16.w),
            Expanded(
              child: _ImpactStatCard(
                label: 'LIVES TOUCHED',
                value: '12',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ImpactStatCard extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _ImpactStatCard({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.montserrat(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[200],
            ),
          ),
          Gap(4.h),
          Text(
            value,
            style: GoogleFonts.montserrat(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.headerText,
            ),
          ),
        ],
      ),
    );
  }
}
