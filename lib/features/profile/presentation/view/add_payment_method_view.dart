import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AddPaymentMethodView extends StatefulWidget {
  const AddPaymentMethodView({super.key});

  @override
  State<AddPaymentMethodView> createState() => _AddPaymentMethodViewState();
}

class _AddPaymentMethodViewState extends State<AddPaymentMethodView> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  @override
  void initState() {
    super.initState();
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_pqnfmone.json',
                width: 200.w,
                repeat: false,
                onLoaded: (composition) {
                  Future.delayed(composition.duration, () {
                    if (context.mounted) {
                      Navigator.pop(context); // Close dialog
                      if (mounted) {
                        Navigator.pop(context); // Go back to payment methods
                      }
                    }
                  });
                },
              ),
              Gap(16.h),
              Text(
                'Card Added Successfully!',
                style: GoogleFonts.montserrat(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

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
          'Add Payment Method',
          style: GoogleFonts.montserrat(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              cardBgColor: const Color(0xFF2E7D6F),
              isSwipeGestureEnabled: true,
              onCreditCardWidgetChange: (CreditCardBrand brand) {},
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CreditCardForm(
                      formKey: formKey,
                      obscureCvv: true,
                      obscureNumber: true,
                      cardNumber: cardNumber,
                      cvvCode: cvvCode,
                      isHolderNameVisible: true,
                      isCardNumberVisible: true,
                      isExpiryDateVisible: true,
                      cardHolderName: cardHolderName,
                      expiryDate: expiryDate,
                      onCreditCardModelChange: onCreditCardModelChange,
                      inputConfiguration: InputConfiguration(
                        cardNumberDecoration: _buildInputDecoration('Card Number', 'XXXX XXXX XXXX XXXX'),
                        expiryDateDecoration: _buildInputDecoration('Expiry Date', 'MM/YY'),
                        cvvCodeDecoration: _buildInputDecoration('CVV', 'XXX'),
                        cardHolderDecoration: _buildInputDecoration('Card Holder', 'Full Name'),
                      ),
                    ),
                    Gap(40.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CustomButton(
                        text: 'Save Card',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            HapticFeedback.mediumImpact();
                            _showSuccessDialog();
                          } else {
                            HapticFeedback.vibrate();
                          }
                        },
                      ),
                    ),
                    Gap(24.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String label, String hint) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      labelStyle: GoogleFonts.montserrat(color: AppColors.headerText, fontSize: 13.sp),
      hintStyle: GoogleFonts.montserrat(color: AppColors.lightText.withValues(alpha: 0.5), fontSize: 13.sp),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFF2E7D6F), width: 1.5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 1.5),
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    if (cardNumber != creditCardModel.cardNumber || 
        expiryDate != creditCardModel.expiryDate || 
        cardHolderName != creditCardModel.cardHolderName || 
        cvvCode != creditCardModel.cvvCode || 
        isCvvFocused != creditCardModel.isCvvFocused) {
      HapticFeedback.selectionClick();
    }
    
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
