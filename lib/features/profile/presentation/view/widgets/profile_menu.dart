import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ProfileMenuItem(
          icon: Icons.edit_note_rounded,
          title: 'Edit Profile',
          onTap: () {
            GoRouter.of(context).push(AppRouter.editProfileView);
          },
        ),
        Gap(16.h),
        _ProfileMenuItem(
          icon: Icons.auto_awesome_rounded,
          title: 'My Impact',
          onTap: () {
            GoRouter.of(context).push(AppRouter.myImpactView);
          },
        ),
        Gap(16.h),
        _ProfileMenuItem(
          icon: Icons.credit_card_rounded,
          title: 'Payment Methods',
          onTap: () {
            GoRouter.of(context).push(AppRouter.paymentMethodsView);
          },
        ),
        Gap(16.h),
        _ProfileMenuItem(
          icon: Icons.settings_outlined,
          title: 'Settings',
          onTap: () {},
        ),
      ],
    );
  }
}

class _ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _ProfileMenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30.r),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F4F8),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(icon, color: const Color(0xFF2E7D6F), size: 24.sp),
            ),
            Gap(20.w),
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.headerText,
              ),
            ),
            const Spacer(),
            Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[300], size: 16.sp),
          ],
        ),
      ),
    );
  }
}
