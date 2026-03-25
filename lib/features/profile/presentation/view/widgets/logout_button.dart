import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(40.r),
        border: Border.all(
          color: Colors.grey[300]!,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.logout_rounded, color: Colors.redAccent),
          Gap(12.w),
          Text(
            'Logout',
            style: GoogleFonts.montserrat(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}

// Note: Dashed border is hard in Vanilla Flutter without a package, 
// using solid border for now as it looks clean, or I can use a CustomPainter if needed.
// But the user requested vanilla CSS qualities, so I'll stick to a clean solid border first.
