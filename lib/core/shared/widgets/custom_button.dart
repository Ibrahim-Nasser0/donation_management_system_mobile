import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      width: isLoading ? (height ?? 56.h) : double.infinity,
      height: height ?? 56.h,
      child: ElevatedButton(
        onPressed: isLoading
            ? null
            : () {
                HapticFeedback.lightImpact();
                onPressed();
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryGradient[0],
          foregroundColor: textColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
          elevation: isLoading ? 0 : 2,
          padding: EdgeInsets.zero,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: isLoading
              ? SizedBox(
                  key: const ValueKey('loading'),
                  height: 24.h,
                  width: 24.h,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2.5,
                  ),
                )
              : Row(
                  key: const ValueKey('content'),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: AppStyles.font16SemiBoldHeader.copyWith(
                        color: textColor ?? Colors.white,
                      ),
                    ),
                    if (icon != null) ...[
                      SizedBox(width: 8.w),
                      Icon(icon, size: 20.sp),
                    ],
                  ],
                ),
        ),
      ),
    );
  }
}
