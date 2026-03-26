import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_text_field.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            labelText: 'Full Name',
            hintText: 'Enter your full name',
            prefixIcon: Icon(Icons.person_outline, color: Colors.grey[400], size: 20.sp),
            validator: (value) {
              if (value == null || value.isEmpty) return 'Please enter your name';
              return null;
            },
          ),
          Gap(20.h),
          CustomTextField(
            labelText: 'Email Address',
            hintText: 'example@email.com',
            prefixIcon: Icon(Icons.email_outlined, color: Colors.grey[400], size: 20.sp),
            validator: (value) {
              if (value == null || value.isEmpty) return 'Please enter your email';
              if (!value.contains('@')) return 'Please enter a valid email';
              return null;
            },
          ),
          Gap(20.h),
          CustomTextField(
            labelText: 'Password',
            hintText: '*********',
            isPassword: true,
            prefixIcon: Icon(Icons.lock_outline, color: Colors.grey[400], size: 20.sp),
            validator: (value) {
              if (value == null || value.isEmpty) return 'Please enter a password';
              if (value.length < 6) return 'Password must be at least 6 characters';
              return null;
            },
          ),
          Gap(40.h),
          CustomButton(
            text: 'Create Account',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                GoRouter.of(context).pushReplacement(AppRouter.homeView);
              }
            },
          ),
          Gap(25.h),
          _buildTermsText(),
        ],
      ),
    );
  }

  Widget _buildTermsText() {
    return Padding(
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
    );
  }
}
