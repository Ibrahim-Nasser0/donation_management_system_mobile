import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalContributionCard extends StatelessWidget {
  final double amount;
  final int impactFactor;

  const TotalContributionCard({
    super.key,
    required this.amount,
    required this.impactFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      width: double.infinity,
      height: 90.h,
      decoration: BoxDecoration(
        color: const Color(0xFFECF5F3), // Light green tint
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: Stack(
        children: [
          // Background Heart Element Faint
          Positioned(
            right: -10.w,
            bottom: -10.h,
            child: Icon(
              Icons.volunteer_activism, // Heart overlay
              size: 80.sp,
              color: const Color(0xFFD6E8E4),
            ),
          ),
          // Content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TOTAL CONTRIBUTION',
                      style: GoogleFonts.montserrat(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2E7D6F),
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '\$${amount.toStringAsFixed(2)}',
                      style: GoogleFonts.montserrat(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E293B),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1.w,
                  height: 40.h,
                  color: const Color(0xFFD6E8E4),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Impact Factor',
                      style: GoogleFonts.montserrat(
                        fontSize: 10.sp,
                        color: const Color(0xFF64748B),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '+$impactFactor Gallons',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E293B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
