import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/pressable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TrendListItem extends StatelessWidget {
  final String date;
  final String title;
  final String points;
 

  const TrendListItem({
    super.key,
    required this.date,
    required this.title,
    required this.points,
    
  });

  @override
  Widget build(BuildContext context) {
    return PressableCard(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border(
            left: BorderSide(color: AppColors.primaryColor, width: 4.w),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(date, style: AppStyles.font10BoldGrey),
                Gap(4.h),
                Text(
                  title,
                  style: AppStyles.font14RegularLight.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.headerText,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(points, style: AppStyles.font16BoldPrimary),
                Text(
                  'Points',
                  style: AppStyles.font10BoldGrey.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
