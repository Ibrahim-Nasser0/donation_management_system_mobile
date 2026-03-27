import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationProgressBar extends StatefulWidget {
  final String percentageText;
  final String amountText;
  final double percentage; // 0.0 to 1.0

  const DonationProgressBar({
    super.key,
    required this.percentageText,
    required this.amountText,
    required this.percentage,
  });

  @override
  State<DonationProgressBar> createState() => _DonationProgressBarState();
}

class _DonationProgressBarState extends State<DonationProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _shineController;

  @override
  void initState() {
    super.initState();
    _shineController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _shineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.percentageText,
              style: AppStyles.font12SemiBoldPrimary,
            ),
            Text(
              widget.amountText,
              style: AppStyles.font12LightText,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Container(
          height: 10.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 1500),
            curve: Curves.easeOutQuart,
            tween: Tween<double>(begin: 0, end: widget.percentage.clamp(0.0, 1.0)),
            builder: (context, value, child) {
              return FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: value,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: AppColors.primaryGradient,
                        ),
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primaryColor.withValues(alpha: 0.3),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    // Shine effect
                    AnimatedBuilder(
                      animation: _shineController,
                      builder: (context, child) {
                        return Positioned.fill(
                          child: FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: 0.2,
                            child: Transform.translate(
                              offset: Offset(
                                (MediaQuery.of(context).size.width * value) *
                                    (_shineController.value * 2 - 1),
                                0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white.withValues(alpha: 0.0),
                                      Colors.white.withValues(alpha: 0.4),
                                      Colors.white.withValues(alpha: 0.0),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
