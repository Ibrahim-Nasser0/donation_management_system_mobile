import 'package:donation_management_system_mobile/core/shared/widgets/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UrgentCaseCardSkeleton extends StatelessWidget {
  const UrgentCaseCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
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
            height: 140.h,
            width: double.infinity,
            borderRadius: 24, // Top rounding gets clipped or simulated
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBox(height: 20.h, width: 200.w, borderRadius: 4),
                SizedBox(height: 8.h),
                ShimmerBox(height: 12.h, width: double.infinity, borderRadius: 4),
                SizedBox(height: 4.h),
                ShimmerBox(height: 12.h, width: 220.w, borderRadius: 4),
                SizedBox(height: 16.h),
                ShimmerBox(height: 8.h, width: double.infinity, borderRadius: 4), // Progress param
                SizedBox(height: 16.h),
                ShimmerBox(height: 45.h, width: double.infinity, borderRadius: 30), // Button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
