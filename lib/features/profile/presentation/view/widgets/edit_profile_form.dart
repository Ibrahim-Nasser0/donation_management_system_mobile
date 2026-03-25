import 'package:donation_management_system_mobile/core/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          labelText: 'Full Name',
          hintText: 'Alexandria Rivera',
        ),
        Gap(20.h),
        const CustomTextField(
          labelText: 'Email Address',
          hintText: 'alexandria.r@impact.org',
          keyboardType: TextInputType.emailAddress,
        ),
        Gap(20.h),
        const CustomTextField(
          labelText: 'Bio',
          hintText: 'Passionate about environmental sustainability and community education. Always looking for ways to give back.',
          maxLines: 5,
        ),
      ],
    );
  }
}
