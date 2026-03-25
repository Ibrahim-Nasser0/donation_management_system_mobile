import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ImpactPromoCard extends StatelessWidget {
  const ImpactPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.w),
      decoration: BoxDecoration(
        color: const Color(0xFFE0F2F1).withOpacity(0.5),
        borderRadius: BorderRadius.circular(40.r),
        border: Border.all(color: const Color(0xFFE0F2F1), width: 2),
      ),
      child: Column(
        children: [
          Text(
            'Double your impact?',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF264E49),
            ),
          ),
          Gap(12.h),
          Text(
            'Join the Monthly Seedling program to unlock 2x impact multipliers on all education initiatives.',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              color: const Color(0xFF264E49).withOpacity(0.7),
              height: 1.5,
            ),
          ),
          Gap(24.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00695C),
                padding: EdgeInsets.symmetric(vertical: 16.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                elevation: 0,
              ),
              child: Text(
                'Learn More',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
