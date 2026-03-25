import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/custom_amount_field.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/donation_amount_grid.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/payment_app_bar.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/payment_header_section.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/payment_method_section.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/payment_stepper.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/security_footer.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/total_contribution_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  int? selectedAmount = 25; // Default amount
  String selectedMethod = 'credit_card'; // Default method
  final TextEditingController _customAmountController = TextEditingController();
  final FocusNode _customAmountFocusNode = FocusNode();

  @override
  void dispose() {
    _customAmountController.dispose();
    _customAmountFocusNode.dispose();
    super.dispose();
  }

  void _onAmountSelected(int amount) {
    setState(() {
      selectedAmount = amount;
      _customAmountController.clear();
      _customAmountFocusNode.unfocus();
    });
  }

  void _onCustomAmountChanged(String value) {
    if (value.isNotEmpty) {
      setState(() {
        selectedAmount = null; // Unselect grid items
      });
    }
  }

  double get currentAmount {
    if (selectedAmount != null) return selectedAmount!.toDouble();
    if (_customAmountController.text.isNotEmpty) {
      return double.tryParse(_customAmountController.text) ?? 0.0;
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    // Every dollar gives 10 gallons based on the mockup text
    int impactFactor = (currentAmount * 10).toInt();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const PaymentAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PaymentStepper(),
                    const PaymentHeaderSection(
                      title: 'Your Impact Starts\nHere',
                      initiativeName: 'Clean Water Initiative',
                      impactDescription: 'Every dollar provides 10 gallons of fresh water.',
                    ),
                    SizedBox(height: 16.h),
                    DonationAmountGrid(
                      selectedAmount: selectedAmount,
                      onAmountSelected: _onAmountSelected,
                    ),
                    CustomAmountField(
                      controller: _customAmountController,
                      focusNode: _customAmountFocusNode,
                      onTap: () {
                        setState(() {
                          selectedAmount = null;
                        });
                      },
                      onChanged: _onCustomAmountChanged,
                    ),
                    SizedBox(height: 16.h),
                    PaymentMethodSection(
                      selectedMethod: selectedMethod,
                      onMethodSelected: (method) {
                        setState(() {
                          selectedMethod = method;
                        });
                      },
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
            ),
            
            // Bottom Fixed Section
            Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                border: Border(top: BorderSide(color: Colors.grey[200]!, width: 1)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TotalContributionCard(
                    amount: currentAmount,
                    impactFactor: impactFactor,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: CustomButton(
                      text: 'Confirm Donation',
                      icon: Icons.favorite_border,
                      backgroundColor: const Color(0xFF2E7D6F),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const SecurityFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
