import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/features/donations/presentation/view/widgets/donations_history_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationsHistory extends StatelessWidget {
  const DonationsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'History',
              style: GoogleFonts.montserrat(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.headerText,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: const Color(0xFFE0F2F1),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                'RECENT ACTIVITY',
                style: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2E7D6F),
                ),
              ),
            ),
          ],
        ),
        Gap(24.h),
        const DonationsHistoryItem(
          title: 'Clean Water Initiative',
          date: 'Sept 12, 2023 • 10:45 AM',
          amount: '150.00',
          icon: Icons.water_drop,
          iconColor: Color(0xFF2E7D6F),
        ),
        const DonationsHistoryItem(
          title: 'Education For All',
          date: 'Aug 28, 2023 • 02:15 PM',
          amount: '500.00',
          icon: Icons.school,
          iconColor: Color(0xFF1976D2),
        ),
        const DonationsHistoryItem(
          title: 'Reforestation Project',
          date: 'Aug 05, 2023 • 09:00 AM',
          amount: '75.00',
          icon: Icons.park,
          iconColor: Color(0xFF8D6E63),
        ),
        const DonationsHistoryItem(
          title: 'Health Care Support',
          date: 'July 21, 2023 • 04:30 PM',
          amount: '1,200.00',
          icon: Icons.medical_services,
          iconColor: Color(0xFF80CBC4),
          isLast: true,
        ),
      ],
    );
  }
}
