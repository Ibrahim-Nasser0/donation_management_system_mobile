import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseDetailsAppBar extends StatelessWidget {
  const CaseDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      elevation: 0,
      leadingWidth: 200.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back, color: const Color(0xFF2E7D6F), size: 20.sp),
            ),
            SizedBox(width: 8.w),
            Text(
              'The Curated\nSanctuary',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E7D6F),
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share_outlined, color: AppColors.headerText, size: 24.sp),
        ),
        Container(
          margin: EdgeInsets.only(right: 16.w),
          decoration: BoxDecoration(
            color: const Color(0xFFE0C097), // Beige circle
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_outline, color: Colors.white, size: 20.sp),
          ),
        ),
      ],
    );
  }
}
