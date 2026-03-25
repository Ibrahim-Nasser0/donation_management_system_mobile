import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/recent_story_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentStoriesSection extends StatelessWidget {
  const RecentStoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Stories',
          style: GoogleFonts.montserrat(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.headerText,
          ),
        ),
        SizedBox(height: 16.h),
        const RecentStoryCard(
          category: 'Empowerment',
          title: 'Education for Every Girl',
          description: 'Breaking the cycle of poverty by providing scholarships and mentoring for young women in technical fields.',
          percentageText: '45% raised',
          amountText: '\$45,000 / \$100,000',
          percentage: 0.45,
          buttonText: 'Support this Case',
          buttonColor: Color(0xFF2E7D6F),
          buttonTextColor: Colors.white,
        ),
        const RecentStoryCard(
          title: 'Stop Hunger Initiative',
          description: 'Monthly food kits for families affected by the economic downturn.',
          percentageText: '20% raised',
          amountText: '\$10K / \$50K',
          percentage: 0.20,
          buttonText: 'Donate',
          buttonColor: Color(0xFFE0E0E0),
          buttonTextColor: Colors.black87,
        ),
        const RecentStoryCard(
          title: 'Community Health Clinic',
          description: 'Equipping a local clinic with essential diagnostic tools for early detection.',
          percentageText: '75% raised',
          amountText: '\$15K / \$20K',
          percentage: 0.75,
          buttonText: 'Donate',
          buttonColor: Color(0xFFE0E0E0),
          buttonTextColor: Colors.black87,
        ),
      ],
    );
  }
}
