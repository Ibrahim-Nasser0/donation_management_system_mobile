import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(40.r),
      child: Image.asset(
        "assets/icons/login.png",
        width: 340.w,
        height: 192.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
