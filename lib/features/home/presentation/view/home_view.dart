import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/section_header_delegate.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/home_header.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/recent_stories_section.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/urgent_cases_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: const HomeHeader(),
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
                          style: GoogleFonts.montserrat(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.headerText,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Immediate support needed.',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: AppColors.lightText,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'View\nAll',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2E7D6F),
                        ),
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
                  style: GoogleFonts.montserrat(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.headerText,
                  ),
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
