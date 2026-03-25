import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/donation_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UrgentCaseCard extends StatelessWidget {
  const UrgentCaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
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
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
                child: Container(
                  height: 140.h,
                  width: double.infinity,
                  color: Colors.grey[300], // Placeholder for image
                  child: Center(
                    child: Icon(Icons.image, color: Colors.grey[500], size: 40.sp),
                  ),
                ),
              ),
              Positioned(
                top: 12.h,
                left: 12.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFC67C4E), // Orange/Brown badge color
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    'URGENT',
                    style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clean Water for Amara',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.headerText,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Providing sustainable filtration systems to the remote village of Amara.',
                  style: GoogleFonts.montserrat(
                    fontSize: 12.sp,
                    color: AppColors.lightText,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 16.h),
                const DonationProgressBar(
                  percentageText: '82% raised',
                  amountText: '\$32,400 / \$35,000',
                  percentage: 0.82,
                ),
                SizedBox(height: 16.h),
                CustomButton(
                  text: 'Donate Now',
                  onPressed: () {},
                  backgroundColor: const Color(0xFF2E7D6F),
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
