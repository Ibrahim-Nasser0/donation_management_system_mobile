import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PaymentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Color(0xFF2E7D6F)),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        'The Curated\nSanctuary',
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2E7D6F),
          height: 1.2,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: CircleAvatar(
            backgroundColor: const Color(0xFFE0C097).withValues(alpha: 0.3),
            radius: 18.r,
            child: Icon(Icons.person, color: const Color(0xFFE0C097), size: 20.sp),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
