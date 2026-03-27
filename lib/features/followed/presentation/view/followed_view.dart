import 'package:donation_management_system_mobile/core/shared/widgets/sanctuary_header.dart';
import 'package:donation_management_system_mobile/features/followed/presentation/view/widgets/followed_card.dart';
import 'package:donation_management_system_mobile/features/followed/presentation/view/widgets/followed_footer.dart';
import 'package:donation_management_system_mobile/features/followed/presentation/view/widgets/followed_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FollowedView extends StatelessWidget {
  const FollowedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FBFF),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SanctuaryHeader(),
                Gap(24.h),
                const FollowedTitle(),
                Gap(32.h),
                const FollowedCard(
                  title: 'Education for Every Girl',
                  description:
                      'Breaking the cycle of poverty by providing quality primary education and school supplies to rural communities in East Africa.',
                  fundedInfo: '78% FUNDED',
                  progress: 0.78,
                  amount: '\$14,200',
                  themeColor: Color(0xFF80CBC4),
                  badge: 'New Milestone Reached',
                  illustration: Icons.menu_book,
                ),
                const FollowedCard(
                  title: 'Clean Water for Amara',
                  description:
                      'Constructing sustainable deep-well water systems to eliminate water-borne diseases for 500 families in our base region.',
                  fundedInfo: '42% FUNDED',
                  progress: 0.42,
                  amount: '\$8,400',
                  themeColor: Color(0xFF90CAF9),
                  illustration: Icons.water_drop,
                ),
                Gap(16.h),
                const FollowedFooter(),
                Gap(40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
