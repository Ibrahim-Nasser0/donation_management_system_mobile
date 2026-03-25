import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/case_bottom_action.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/case_description_text.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/case_details_app_bar.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/case_hero_section.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/case_quote_block.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/case_stats_row.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/case_title_section.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/funding_status_card.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/widgets/recent_supporters_card.dart';
import 'package:flutter/material.dart';

class CaseDetailsView extends StatelessWidget {
  const CaseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: const CustomScrollView(
        slivers: [
          CaseDetailsAppBar(),
          CaseHeroSection(),
          CaseTitleSection(
            title:
                'Empowering the Next Generation: A New Learning Center for Hope Valley',
          ),
          CaseStatsRow(),
          CaseDescriptionText(
            text:
                'In the heart of Hope Valley, education remains the only bridge to a brighter future. Currently, over 400 children share a single-room facility that lacks basic electricity and clean water.\n\nOur mission is to construct a modern, solar-powered learning sanctuary equipped with a digital library, three spacious classrooms, and a dedicated community space for evening vocational training.\n\nBy contributing today, you aren\'t just buying bricks and mortar; you are investing in the potential of every child who walks through these doors. Our goal of £85,000 will cover all construction costs, the installation of a sustainable well, and the first year of salaries for specialized local teachers.',
          ),
          CaseQuoteBlock(
            quote:
                'When we give children the space to dream, they build the future we all want to live in.',
            author: 'Dr. Sarah Jenkins, Project Lead',
          ),
          CaseDescriptionText(
            text:
                'This sanctuary will also serve as a hub for the local community, providing health workshops and literacy classes for adults during the weekends. We have already secured the land and the necessary permits—your support is the final piece of this transformative puzzle.',
          ),
          FundingStatusCard(),
          RecentSupportersCard(),
        ],
      ),
      bottomNavigationBar: const CaseBottomAction(),
    );
  }
}
