import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/impact_breakdown.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/impact_promo_card.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/impact_score_card.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/widgets/monthly_trend.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MyImpactView extends StatelessWidget {
  const MyImpactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FBFF),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2E7D6F)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'My Impact',
          style: GoogleFonts.montserrat(
            color: const Color(0xFF2E7D6F),
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined, color: Color(0xFF2E7D6F)),
            onPressed: () {},
          ),
          Gap(16.w),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Gap(20.h),
              const ImpactScoreCard(),
              Gap(40.h),
              const ImpactBreakdown(),
              Gap(40.h),
              const MonthlyTrend(),
              Gap(40.h),
              const ImpactPromoCard(),
              Gap(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
