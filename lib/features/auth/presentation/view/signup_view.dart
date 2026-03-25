import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/signup_action.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/signup_bottom_icons.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/signup_form.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/signup_header.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/signin_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FBFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(30.h),
              const SignupHeader(),
              Gap(35.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 35.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: Column(
                  children: [
                    const SignupForm(),
                    Gap(40.h),
                    const SignupAction(),
                  ],
                ),
              ),
              Gap(35.h),
              const SigninLink(),
              Gap(60.h),
              const SignupBottomIcons(),
              Gap(40.h),
            ],
          ),
        ),
      ),
    );
  }
}