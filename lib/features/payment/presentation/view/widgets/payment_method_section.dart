import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/payment_method_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodSection extends StatelessWidget {
  final String selectedMethod;
  final ValueChanged<String> onMethodSelected;

  const PaymentMethodSection({
    super.key,
    required this.selectedMethod,
    required this.onMethodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Method',
            style: GoogleFonts.montserrat(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1E293B),
            ),
          ),
          SizedBox(height: 16.h),
          PaymentMethodTile(
            title: 'Credit Card',
            subtitle: 'Ending in 4242',
            isSelected: selectedMethod == 'credit_card',
            onTap: () => onMethodSelected('credit_card'),
            iconContent: Container(
              color: const Color(0xFFE3F2FD),
              child: Icon(Icons.credit_card, color: const Color(0xFF1976D2), size: 20.sp),
            ),
          ),
          PaymentMethodTile(
            title: 'Apple Pay',
            isSelected: selectedMethod == 'apple_pay',
            onTap: () => onMethodSelected('apple_pay'),
            iconContent: Container(
              color: Colors.black,
              child: Center(
                child: Icon(Icons.apple, color: Colors.white, size: 20.sp),
              ),
            ),
          ),
          PaymentMethodTile(
            title: 'PayPal',
            isSelected: selectedMethod == 'paypal',
            onTap: () => onMethodSelected('paypal'),
            iconContent: Container(
              color: const Color(0xFF003087),
              child: Center(
                child: Text(
                  'PayPal',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 8.sp,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
