import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ImpactBreakdown extends StatelessWidget {
  const ImpactBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Breakdown',
              style: AppStyles.font20BoldHeader,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View full report',
                style: AppStyles.font12SemiBoldPrimary,
              ),
            ),
          ],
        ),
        Gap(16.h),
        const _BreakdownItem(
          category: 'ENVIRONMENT',
          title: '150',
          subtitle: 'Trees Planted',
          icon: Icons.park_outlined,
          progress: 0.7,
          color: Color(0xFF2E7D6F),
        ),
        Gap(16.h),
        const _BreakdownItem(
          category: 'EDUCATION',
          title: '12',
          subtitle: 'Students Funded',
          icon: Icons.school_outlined,
          progress: 0.4,
          color: Color(0xFF1976D2),
        ),
        Gap(16.h),
        const _BreakdownItem(
          category: 'HEALTH',
          title: '240',
          subtitle: 'Vaccines Provided',
          icon: Icons.medical_services_outlined,
          progress: 0.9,
          color: Color(0xFFD32F2F),
          isTop: true,
        ),
      ],
    );
  }
}

class _BreakdownItem extends StatelessWidget {
  final String category;
  final String title;
  final String subtitle;
  final IconData icon;
  final double progress;
  final Color color;
  final bool isTop;

  const _BreakdownItem({
    required this.category,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.progress,
    required this.color,
    this.isTop = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 20.sp),
              ),
              const Spacer(),
              Text(
                category,
                style: AppStyles.font10BoldGrey.copyWith(
                  letterSpacing: 1,
                ),
              ),
              if (isTop) ...[
                Gap(8.w),
                Text(
                  'Top Category',
                  style: AppStyles.font10BoldGrey.copyWith(
                    color: Colors.orange[800],
                  ),
                ),
              ],
            ],
          ),
          Gap(16.h),
          Text(
            title,
            style: AppStyles.font20BoldHeader.copyWith(
              fontSize: 32.sp,
            ),
          ),
          Text(
            subtitle,
            style: AppStyles.font14RegularLight,
          ),
          Gap(12.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[100],
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: 6.h,
            ),
          ),
        ],
      ),
    );
  }
}
