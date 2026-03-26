import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/bouncy_button.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/section_header_delegate.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/home_header.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/recent_stories_section.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/urgent_cases_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    // Simulate network delay
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: HomeHeader(scrollController: _scrollController),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: SectionHeaderDelegate(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Urgent Cases',
                          style: AppStyles.font20BoldHeader,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Immediate support needed.',
                          style: AppStyles.font12LightText,
                        ),
                      ],
                    ),
                    BouncyButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        textAlign: TextAlign.center,
                        style: AppStyles.font12SemiBoldPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: UrgentCasesSection(isLoading: _isLoading),
            ),
            SliverToBoxAdapter(
              child: Gap(16.h),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: SectionHeaderDelegate(
                height: 40,
                child: Text(
                  'Recent Stories',
                  style: AppStyles.font20BoldHeader,
                ),
              ),
            ),
            RecentStoriesSection(isLoading: _isLoading),
          ],
        ),
      ),
    );
  }
}
