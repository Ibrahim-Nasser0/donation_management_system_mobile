import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/app_router.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/payment_method_manage_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodsView extends StatelessWidget {
  const PaymentMethodsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2E7D6F)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Payment Methods',
          style: GoogleFonts.montserrat(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(24.h),
              Text(
                'Managed saved methods',
                style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.headerText,
                ),
              ),
              Gap(16.h),
              PaymentMethodManageTile(
                title: 'Credit Card',
                subtitle: '**** **** **** 4242',
                onDelete: () {},
                iconContent: Container(
                  color: const Color(0xFFE3F2FD),
                  child: Icon(Icons.credit_card, color: const Color(0xFF1976D2), size: 20.sp),
                ),
              ),
              PaymentMethodManageTile(
                title: 'PayPal',
                subtitle: 'jdoe@example.com',
                onDelete: () {},
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
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.push(AppRouter.addPaymentMethodView);
                  },
                  icon: const Icon(Icons.add_rounded),
                  label: const Text('Add New Method'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D6F),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    textStyle: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Gap(24.h),
            ],
          ),
        ),
      ),
    );
  }
}
