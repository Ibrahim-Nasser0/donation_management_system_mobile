import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class DonationProgressBar extends StatelessWidget {
  final double percentage;
  final double height;

  const DonationProgressBar({
    super.key,
    required this.percentage,
    this.height = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: percentage.clamp(0.0, 1.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: AppColors.primaryGradient,
            ),
            borderRadius: BorderRadius.circular(height / 2),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withValues(alpha: 0.3),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
