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

class CaseDetailsView extends StatefulWidget {
  const CaseDetailsView({super.key});

  @override
  State<CaseDetailsView> createState() => _CaseDetailsViewState();
}

class _CaseDetailsViewState extends State<CaseDetailsView>
    with TickerProviderStateMixin {
  late ScrollController _scrollController;
  bool _isStickyVisible = false;
  late AnimationController _fadeController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..forward();
  }

  void _scrollListener() {
    if (_scrollController.offset > 200 && !_isStickyVisible) {
      setState(() => _isStickyVisible = true);
    } else if (_scrollController.offset <= 200 && _isStickyVisible) {
      setState(() => _isStickyVisible = false);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  Widget _buildAnimatedSliver(Widget sliver, int index) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOutQuart,
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return SliverOpacity(
          opacity: value,
          sliver: SliverPadding(
            padding: EdgeInsets.only(top: 20 * (1 - value)),
            sliver: sliver,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          const CaseDetailsAppBar(),
          const CaseHeroSection(),
          _buildAnimatedSliver(
            const CaseTitleSection(
              title:
                  'Empowering the Next Generation: A New Learning Center for Hope Valley',
            ),
            1,
          ),
          _buildAnimatedSliver(const CaseStatsRow(), 2),
          _buildAnimatedSliver(
            const CaseDescriptionText(
              text:
                  'In the heart of Hope Valley, education remains the only bridge to a brighter future. Currently, over 400 children share a single-room facility that lacks basic electricity and clean water.\n\nOur mission is to construct a modern, solar-powered learning sanctuary equipped with a digital library, three spacious classrooms, and a dedicated community space for evening vocational training.\n\nBy contributing today, you aren\'t just buying bricks and mortar; you are investing in the potential of every child who walks through these doors. Our goal of £85,000 will cover all construction costs, the installation of a sustainable well, and the first year of salaries for specialized local teachers.',
            ),
            3,
          ),
          _buildAnimatedSliver(
            const CaseQuoteBlock(
              quote:
                  'When we give children the space to dream, they build the future we all want to live in.',
              author: 'Dr. Sarah Jenkins, Project Lead',
            ),
            4,
          ),
          _buildAnimatedSliver(
            const CaseDescriptionText(
              text:
                  'This sanctuary will also serve as a hub for the local community, providing health workshops and literacy classes for adults during the weekends. We have already secured the land and the necessary permits—your support is the final piece of this transformative puzzle.',
            ),
            5,
          ),
          _buildAnimatedSliver(const FundingStatusCard(), 6),
          _buildAnimatedSliver(const RecentSupportersCard(), 7),
          const SliverToBoxAdapter(child: SizedBox(height: 120)),
        ],
      ),
      bottomNavigationBar: AnimatedSlide(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutBack,
        offset: _isStickyVisible ? Offset.zero : const Offset(0, 1.2),
        child: const CaseBottomAction(),
      ),
    );
  }
}
