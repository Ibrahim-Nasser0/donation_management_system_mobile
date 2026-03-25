import 'package:donation_management_system_mobile/features/payment/presentation/view/widgets/amount_selection_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationAmountGrid extends StatelessWidget {
  final int? selectedAmount;
  final ValueChanged<int> onAmountSelected;

  const DonationAmountGrid({
    super.key,
    required this.selectedAmount,
    required this.onAmountSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.w,
        childAspectRatio: 1.8,
        children: [
          AmountSelectionCard(
            amount: 10,
            label: 'BASIC',
            isSelected: selectedAmount == 10,
            onTap: () => onAmountSelected(10),
          ),
          AmountSelectionCard(
            amount: 25,
            label: 'ESSENTIAL',
            isSelected: selectedAmount == 25,
            onTap: () => onAmountSelected(25),
          ),
          AmountSelectionCard(
            amount: 50,
            label: 'HERO',
            isSelected: selectedAmount == 50,
            onTap: () => onAmountSelected(50),
          ),
          AmountSelectionCard(
            amount: 100,
            label: 'ANGEL',
            isSelected: selectedAmount == 100,
            onTap: () => onAmountSelected(100),
          ),
        ],
      ),
    );
  }
}
