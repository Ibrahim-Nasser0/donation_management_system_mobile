import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/donation_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FundingStatusCard extends StatelessWidget {
  const FundingStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(24.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TweenAnimationBuilder<double>(
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeOutExpo,
                        tween: Tween(begin: 0, end: 54230),
                        builder: (context, value, child) {
                          return Text(
                            '£${value.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}',
                            style: GoogleFonts.montserrat(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF2E7D6F),
                            ),
                          );
                        },
                      ),
                      Text(
                        'raised of £85,000 goal',
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          color: AppColors.lightText,
                        ),
                      ),
                    ],
                  ),
                  TweenAnimationBuilder<double>(
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeOutExpo,
                    tween: Tween(begin: 0, end: 0.64),
                    builder: (context, value, child) {
                      return Text(
                        '${(value * 100).toInt()}%',
                        style: GoogleFonts.montserrat(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1976D2),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              const DonationProgressBar(
                percentageText: '', // Hide default text since we customized it above
                amountText: '',
                percentage: 0.64,
              ),
              // We use negative translation or simply hide it via empty strings since we want the visual bar component.
              SizedBox(height: 24.h),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1976D2).withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.trending_up, color: const Color(0xFF1976D2), size: 16.sp),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VELOCITY',
                        style: GoogleFonts.montserrat(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.lightText,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Text(
                        'Trending: +12% today',
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
            ],
          ),
        ),
      ),
    );
  }
}
