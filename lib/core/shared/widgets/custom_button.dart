import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: .center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.borderRadius.r),
          gradient: LinearGradient(colors: AppColors.primaryGradient),
        ),
        child:widget ,
      ),
    );
  }
}
