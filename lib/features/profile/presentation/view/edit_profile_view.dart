import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/edit_profile_form.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/edit_profile_header.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/edit_profile_privacy_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2E7D6F)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Edit Profile',
          style: GoogleFonts.montserrat(
            color: const Color(0xFF2E7D6F),
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const EditProfileHeader(),
              Gap(40.h),
              const EditProfileForm(),
              Gap(40.h),
              const EditProfilePrivacyCard(),
              Gap(40.h),
              CustomButton(
                text: 'Save Changes',
                icon: Icons.save_outlined,
                onPressed: () => Navigator.pop(context),
              ),
              Gap(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
