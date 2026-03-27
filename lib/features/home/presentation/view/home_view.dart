import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/constant/app_styles.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/bouncy_button.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/section_header_delegate.dart';
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
            SliverAppBar(
              expandedHeight: 120.h,
              backgroundColor: AppColors.backgroundColor,
              elevation: 0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.2,
                titlePadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                title: Text(
                  'The Curated Sanctuary',
                  style: AppStyles.font16SemiBoldHeader.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                background: Container(
                  color: AppColors.backgroundColor,
                  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: AppColors.primaryColor.withValues(alpha: 0.1),
                        child: Icon(Icons.person,
                            color: AppColors.primaryColor, size: 24.sp),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search,
                            color: AppColors.headerText, size: 24.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: SectionHeaderDelegate(
                height: 100,
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
                height: 60,
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
