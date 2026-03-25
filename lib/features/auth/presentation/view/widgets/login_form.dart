import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_text_field.dart';
import 'package:donation_management_system_mobile/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: GoogleFonts.montserrat(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryGradient[0],
          ),
        ),
        Gap(10.h),
        Text(
          'Continue your journey of making a difference in the world.',
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            color: AppColors.lightText,
            height: 1.5,
          ),
        ),
        Gap(30.h),

        // Form
        CustomTextField(
          labelText: 'Email Address',
          hintText: 'name@example.com',
          suffixIcon: Icon(
            Icons.email_outlined,
            color: Colors.grey[400],
            size: 20.sp,
          ),
        ),
        Gap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Password',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.headerText,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFC67C4E),
                ),
              ),
            ),
          ],
        ),
        CustomTextField(
          hintText: '********',
          obscureText: true,
          suffixIcon: Icon(
            Icons.lock_outline,
            color: Colors.grey[400],
            size: 20.sp,
          ),
        ),
        Gap(30.h),

        CustomButton(
          text: 'Sign In',
          icon: Icons.arrow_forward,
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.homeView);
          },
        ),
      ],
    );
  }
}
