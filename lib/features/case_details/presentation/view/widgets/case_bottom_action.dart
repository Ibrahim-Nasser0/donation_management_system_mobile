import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CaseBottomAction extends StatelessWidget {
  const CaseBottomAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16.h,
        bottom: MediaQuery.of(context).padding.bottom + 16.h,
        left: 24.w,
        right: 24.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey[200]!, width: 1)),
      ),
      child: CustomButton(
        text: 'Donate Now',
        icon: Icons.volunteer_activism, // Heart/hand representation
        onPressed: () {},
      ),
    );
  }
}
