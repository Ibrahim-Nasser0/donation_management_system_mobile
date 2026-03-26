import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget {
  final ScrollController scrollController;

  const HomeHeader({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        double offset = 0;
        if (scrollController.hasClients) {
          offset = scrollController.offset;
        }
        
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            children: [
              Transform.translate(
                offset: Offset(0, -offset * 0.2), // Parallax factor 0.2
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppColors.primaryColor.withValues(alpha: 0.1),
                  child: Icon(Icons.person, color: AppColors.primaryColor, size: 24.sp),
                ),
              ),
              SizedBox(width: 12.w),
              Transform.translate(
                offset: Offset(0, -offset * 0.1), // Parallax factor 0.1
                child: Text(
                  'The Curated Sanctuary',
                  style: AppStyles.font16SemiBoldHeader.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: AppColors.headerText, size: 24.sp),
              ),
            ],
          ),
        );
      },
    );
  }
}
