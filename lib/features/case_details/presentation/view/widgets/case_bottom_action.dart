import 'dart:ui';
import 'package:donation_management_system_mobile/core/shared/widgets/bouncy_button.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/app_router.dart';

class CaseBottomAction extends StatelessWidget {
  const CaseBottomAction({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.only(
            top: 20.h,
            bottom: MediaQuery.of(context).padding.bottom + 20.h,
            left: 24.w,
            right: 24.w,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            border: Border(
              top: BorderSide(
                color: Colors.grey[200]!.withValues(alpha: 0.5),
                width: 1.5,
              ),
            ),
          ),
          child: BouncyButton(
            child: CustomButton(
              text: 'Donate Now',
              icon: Icons.volunteer_activism_rounded,
              onPressed: () => context.push(AppRouter.paymentView),
            ),
          ),
        ),
      ),
    );
  }
}
