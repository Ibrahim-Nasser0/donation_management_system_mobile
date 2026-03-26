import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/urgent_case_card.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/urgent_case_card_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UrgentCasesSection extends StatelessWidget {
  final bool isLoading;
  
  const UrgentCasesSection({
    super.key,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3, 
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
        itemBuilder: (context, index) {
          if (isLoading) {
            return const UrgentCaseCardSkeleton();
          }
          return const UrgentCaseCard();
        },
      ),
    );
  }
}
