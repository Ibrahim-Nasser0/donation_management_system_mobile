import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ImpactScoreCard extends StatefulWidget {
  const ImpactScoreCard({super.key});

  @override
  State<ImpactScoreCard> createState() => _ImpactScoreCardState();
}

class _ImpactScoreCardState extends State<ImpactScoreCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryColor,
            AppColors.primaryGradient[1],
          ],
        ),
        borderRadius: BorderRadius.circular(40.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return ClipPath(
                  clipper: _WaveClipper(_controller.value),
                  child: Container(
                    height: 120.h,
                    color: Colors.white.withValues(alpha: 0.15),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TOTAL IMPACT SCORE',
                  style: AppStyles.font12LightText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withValues(alpha: 0.7),
                    letterSpacing: 1,
                  ),
                ),
                Gap(12.h),
                Text(
                  '1,084',
                  style: AppStyles.font20BoldHeader.copyWith(
                    fontSize: 56.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Points earned',
                  style: AppStyles.font14RegularLight.copyWith(
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WaveClipper extends CustomClipper<Path> {
  final double animationValue;

  _WaveClipper(this.animationValue);

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.8);
    
    double x = animationValue * size.width;
    
    var firstControlPoint = Offset(size.width * 0.25 - (x * 0.1), size.height + (animationValue * 10));
    var firstEndPoint = Offset(size.width * 0.5, size.height * 0.7 + (animationValue * 20));
    
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    
    var secondControlPoint = Offset(size.width * 0.75 + (x * 0.1), size.height * 0.4 - (animationValue * 10));
    var secondEndPoint = Offset(size.width, size.height * 0.8);
    
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );
    
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_WaveClipper oldClipper) => oldClipper.animationValue != animationValue;
}
