import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/urgent_case_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UrgentCasesSection extends StatelessWidget {
  const UrgentCasesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Urgent Cases',
                  style: GoogleFonts.montserrat(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.headerText,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Immediate support needed for these\nstories.',
                  style: GoogleFonts.montserrat(
                    fontSize: 12.sp,
                    color: AppColors.lightText,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View\nAll',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2E7D6F),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 380.h, // Fixed height to accommodate the card
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3, // Mock count
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            // Don't clip internal shadow by adding padding around the list view
            padding: EdgeInsets.symmetric(vertical: 8.h),
            itemBuilder: (context, index) => const UrgentCaseCard(),
          ),
        ),
      ],
    );
  }
}
