import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/login_bottom_quote.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/login_form.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/login_header.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/signup_link.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/widgets/social_login_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F2F1),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(20.h),
              // Content Container (The Card)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const LoginHeader(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 10.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LoginForm(),
                          Gap(30.h),
                          const SocialLoginSection(),
                          Gap(40.h),
                          const SignupLink(),
                          Gap(10.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(30.h),
              const LoginBottomQuote(),
              Gap(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
