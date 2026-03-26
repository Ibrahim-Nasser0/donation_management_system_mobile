import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/app_router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninLink extends StatelessWidget {
  const SigninLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            color: AppColors.lightText,
          ),
          children: [
            const TextSpan(
              text: "Already part of our sanctuary? ",
            ),
            TextSpan(
              text: 'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryGradient[0],
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  GoRouter.of(context).push(AppRouter.loginView);
                },
            ),
          ],
        ),
      ),
    );
  }
}
