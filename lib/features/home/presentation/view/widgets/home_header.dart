import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: const Color(0xFF2E7D6F).withValues(alpha: 0.1),
            child: Icon(Icons.person, color: const Color(0xFF2E7D6F), size: 24.sp), // Placeholder avatar
          ),
          SizedBox(width: 12.w),
          Text(
            'The Curated Sanctuary',
            style: GoogleFonts.montserrat(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E7D6F),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: AppColors.headerText, size: 24.sp),
          ),
        ],
      ),
    );
  }
}
