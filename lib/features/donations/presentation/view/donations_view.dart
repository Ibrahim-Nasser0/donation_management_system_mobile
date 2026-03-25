import 'package:donation_management_system_mobile/features/donations/presentation/view/widgets/donations_header.dart';
import 'package:donation_management_system_mobile/features/donations/presentation/view/widgets/donations_history.dart';
import 'package:donation_management_system_mobile/features/donations/presentation/view/widgets/donations_impact_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationsView extends StatelessWidget {
  const DonationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DonationsHeader(),
                Gap(24.h),
                const DonationsImpactSummary(),
                Gap(40.h),
                const DonationsHistory(),
                Gap(30.h),
                Center(
                  child: Text(
                    'Your contributions make a difference every day.',
                    style: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      color: Colors.blueGrey[300],
                    ),
                  ),
                ),
                Gap(20.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00695C),
                    minimumSize: Size(double.infinity, 56.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    'Download Annual Report',
                    style: GoogleFonts.montserrat(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Gap(40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
