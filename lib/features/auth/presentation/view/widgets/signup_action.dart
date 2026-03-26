import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupAction extends StatelessWidget {
  const SignupAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Create Account',
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.homeView);
          },
        ),
        Gap(25.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.montserrat(
                fontSize: 11.sp,
                color: AppColors.lightText,
                height: 1.4,
              ),
              children: [
                const TextSpan(text: 'By creating an account, you agree to our\n'),
                TextSpan(
                  text: 'Terms of Service',
                  style: TextStyle(
                    color: AppColors.primaryGradient[0],
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const TextSpan(text: ' and '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                    color: AppColors.primaryGradient[0],
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const TextSpan(text: '.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
