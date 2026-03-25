import 'package:donation_management_system_mobile/core/shared/widgets/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentStoryCardSkeleton extends StatelessWidget {
  const RecentStoryCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerBox(
            height: 180.h,
            width: double.infinity,
            borderRadius: 24, 
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBox(height: 12.h, width: 100.w, borderRadius: 4), // Category
                SizedBox(height: 8.h),
                ShimmerBox(height: 22.h, width: 240.w, borderRadius: 4), // Title
                SizedBox(height: 8.h),
                ShimmerBox(height: 12.h, width: double.infinity, borderRadius: 4),
                SizedBox(height: 4.h),
                ShimmerBox(height: 12.h, width: 250.w, borderRadius: 4),
                SizedBox(height: 16.h),
                ShimmerBox(height: 8.h, width: double.infinity, borderRadius: 4), // Progress
                SizedBox(height: 16.h),
                ShimmerBox(height: 50.h, width: double.infinity, borderRadius: 30), // Button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
