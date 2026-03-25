import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthlyTrend extends StatelessWidget {
  const MonthlyTrend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Monthly Trend',
          style: GoogleFonts.montserrat(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
        Gap(20.h),
        Container(
          padding: EdgeInsets.all(24.w),
          decoration: BoxDecoration(
            color: const Color(0xFFF1F4F8).withOpacity(0.5),
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Column(
            children: [
              const _TrendListItem(
                date: 'AUGUST 2023',
                title: 'High Growth Month',
                points: '+120',
                isHighlighted: true,
              ),
              Gap(16.h),
              const _TrendListItem(
                date: 'JULY 2023',
                title: 'Steady Giving',
                points: '+45',
              ),
              Gap(16.h),
              const _TrendListItem(
                date: 'JUNE 2023',
                title: 'Summer Campaign',
                points: '+88',
              ),
              Gap(30.h),
              _DownloadButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _TrendListItem extends StatelessWidget {
  final String date;
  final String title;
  final String points;
  final bool isHighlighted;

  const _TrendListItem({
    required this.date,
    required this.title,
    required this.points,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        border: isHighlighted
            ? Border(left: BorderSide(color: const Color(0xFF2E7D6F), width: 3.w))
            : null,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[200],
                ),
              ),
              Gap(4.h),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.headerText,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            points,
            style: GoogleFonts.montserrat(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E7D6F),
            ),
          ),
          Gap(4.w),
          Text(
            'Points',
            style: GoogleFonts.montserrat(
              fontSize: 10.sp,
              color: Colors.blueGrey[200],
            ),
          ),
        ],
      ),
    );
  }
}

class _DownloadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        color: const Color(0xFF121212),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Download History (PDF)',
            style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
