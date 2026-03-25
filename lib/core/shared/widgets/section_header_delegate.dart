import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  SectionHeaderDelegate({
    required this.child,
    this.height = 60.0,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.backgroundColor.withValues(alpha: 0.95), // Slight transparency for glass effect
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: child,
    );
  }

  @override
  double get maxExtent => height.h;

  @override
  double get minExtent => height.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
