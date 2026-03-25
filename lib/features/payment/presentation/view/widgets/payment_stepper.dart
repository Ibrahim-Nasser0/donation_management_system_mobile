import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentStepper extends StatelessWidget {
  const PaymentStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStep(
            text: 'Cause',
            isCompleted: true,
            isActive: false,
          ),
          _buildDivider(),
          _buildStep(
            text: 'Payment',
            isCompleted: false,
            isActive: true,
            stepNumber: '2',
          ),
          _buildDivider(),
          _buildStep(
            text: 'Success',
            isCompleted: false,
            isActive: false,
            stepNumber: '3',
          ),
        ],
      ),
    );
  }

  Widget _buildStep({
    required String text,
    required bool isCompleted,
    required bool isActive,
    String? stepNumber,
  }) {
    Color primaryColor = const Color(0xFF2E7D6F);
    Color inactiveColor = Colors.grey[300]!;

    return Row(
      children: [
        Container(
          width: 24.w,
          height: 24.w,
          decoration: BoxDecoration(
            color: isCompleted || isActive ? primaryColor : Colors.white,
            shape: BoxShape.circle,
            border: isCompleted || isActive ? null : Border.all(color: inactiveColor, width: 2),
          ),
          child: Center(
            child: isCompleted
                ? Icon(Icons.check, color: Colors.white, size: 14.sp)
                : Text(
                    stepNumber ?? '',
                    style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: isActive ? Colors.white : Colors.grey[400],
                    ),
                  ),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            fontWeight: isCompleted || isActive ? FontWeight.bold : FontWeight.w500,
            color: isCompleted || isActive ? primaryColor : Colors.grey[400],
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      width: 12.w,
      height: 1.h,
      color: Colors.grey[300],
    );
  }
}
