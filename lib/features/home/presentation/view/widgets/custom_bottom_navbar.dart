import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavbar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryGradient[0].withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _NavbarItem(
            label: 'HOME',
            icon: selectedIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
            isSelected: selectedIndex == 0,
            onTap: () => onItemSelected(0),
          ),
          _NavbarItem(
            label: 'DONATIONS',
            icon: selectedIndex == 1 ? Icons.volunteer_activism : Icons.volunteer_activism_outlined,
            isSelected: selectedIndex == 1,
            onTap: () => onItemSelected(1),
          ),
          _NavbarItem(
            label: 'FOLLOWED',
            icon: selectedIndex == 2 ? Icons.bookmark_rounded : Icons.bookmark_outline_rounded,
            isSelected: selectedIndex == 2,
            onTap: () => onItemSelected(2),
          ),
          _NavbarItem(
            label: 'PROFILE',
            icon: selectedIndex == 3 ? Icons.person_rounded : Icons.person_outline_rounded,
            isSelected: selectedIndex == 3,
            onTap: () => onItemSelected(3),
          ),
        ],
      ),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavbarItem({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();
        onTap();
      },
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primaryGradient[0] : Colors.blueGrey[200],
              size: 28.sp,
            ),
            Gap(4.h),
            Text(
              label,
              style: GoogleFonts.montserrat(
                fontSize: 10.sp,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                color: isSelected ? AppColors.primaryGradient[0] : Colors.blueGrey[200],
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
