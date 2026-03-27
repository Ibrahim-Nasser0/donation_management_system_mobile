import 'dart:ui';
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
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: AppColors.backgroundColor.withValues(alpha: 0.7),
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: child,
        ),
      ),
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
