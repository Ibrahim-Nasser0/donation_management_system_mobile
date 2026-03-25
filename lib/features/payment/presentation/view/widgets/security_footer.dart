import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityFooter extends StatelessWidget {
  const SecurityFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lock_outline, size: 10.sp, color: const Color(0xFF94A3B8)),
          SizedBox(width: 4.w),
          Text(
            'SSL SECURE',
            style: GoogleFonts.montserrat(
              fontSize: 8.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF94A3B8),
            ),
          ),
          SizedBox(width: 16.w),
          Icon(Icons.shield_outlined, size: 10.sp, color: const Color(0xFF94A3B8)),
          SizedBox(width: 4.w),
          Text(
            'ENCRYPTED',
            style: GoogleFonts.montserrat(
              fontSize: 8.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF94A3B8),
            ),
          ),
        ],
      ),
    );
  }
}
