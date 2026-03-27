import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/logout_button.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/profile_header.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/profile_menu.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/profile_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: GoogleFonts.montserrat(
              color: const Color(0xFF2E7D6F),
              fontWeight: FontWeight.bold,
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
                Gap(20.h),
                const ProfileHeader(),
                Gap(40.h),
                const ProfileStats(),
                Gap(30.h),
                const ProfileMenu(),
                Gap(40.h),
                const LogoutButton(),
                Gap(160.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
