import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignupBottomIcons extends StatelessWidget {
  const SignupBottomIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _CircularIcon(
          icon: Icons.park_outlined,
          color: Colors.grey.withOpacity(0.1),
        ),
        Gap(20.w),
        Column(
          children: [
            _CircularIcon(
              icon: Icons.favorite_outline,
              color: const Color(0xFFE0F2F1),
            ),
            Gap(20.h),
          ],
        ),
        Gap(20.w),
        _CircularIcon(
          icon: Icons.people_outline,
          color: const Color(0xFFE8EAF6),
        ),
      ],
    );
  }
}

class _CircularIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const _CircularIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.w,
      height: 122.h,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(48.r),
      ),
      child: Icon(icon, color: Colors.black38, size: 28.sp),
    );
  }
}
