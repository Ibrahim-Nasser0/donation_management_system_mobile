import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileHeader extends StatelessWidget {
  const EditProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 65.r,
                backgroundImage: const AssetImage('assets/images/profile.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: const BoxDecoration(
                color: Color(0xFF2E7D6F),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.edit, color: Colors.white, size: 20.sp),
            ),
          ],
        ),
        Gap(20.h),
        Text(
          'Alexandria Rivera',
          style: GoogleFonts.montserrat(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
        Gap(4.h),
        Text(
          'Impact Member since 2022',
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            color: AppColors.lightText,
          ),
        ),
      ],
    );
  }
}
