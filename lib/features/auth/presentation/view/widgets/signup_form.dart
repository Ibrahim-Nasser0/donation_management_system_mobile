import 'package:donation_management_system_mobile/core/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextField(
          labelText: 'Full Name',
          hintText: 'Enter your full name',
          prefixIcon: Icon(Icons.person_outline, size: 20),
        ),
        Gap(20.h),
        const CustomTextField(
          labelText: 'Email Address',
          hintText: 'example@email.com',
          prefixIcon: Icon(Icons.email_outlined, size: 20),
        ),
        Gap(20.h),
        const CustomTextField(
          labelText: 'Password',
          hintText: '*********',
          obscureText: true,
          prefixIcon: Icon(Icons.lock_outline, size: 20),
          suffixIcon: Icon(Icons.visibility_outlined, size: 20),
        ),
      ],
    );
  }
}
