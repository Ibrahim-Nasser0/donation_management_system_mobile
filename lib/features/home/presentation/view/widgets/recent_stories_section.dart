import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/recent_story_grid_card.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/recent_story_grid_card_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentStoriesSection extends StatelessWidget {
  final bool isLoading;

  const RecentStoriesSection({
    super.key,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h, bottom: 32.h),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          childAspectRatio: 0.85, 
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (isLoading) {
              return const RecentStoryGridCardSkeleton();
            }
            
            final stories = [
              {
                'title': 'Education for Every Girl',
                'amountText': '\$45K / \$100K',
                'percentage': 0.45,
              },
              {
                'title': 'Stop Hunger Initiative',
                'amountText': '\$10K / \$50K',
                'percentage': 0.20,
              },
              {
                'title': 'Community Health Clinic',
                'amountText': '\$15K / \$20K',
                'percentage': 0.75,
              },
              {
                'title': 'Clean Water Access',
                'amountText': '\$8K / \$10K',
                'percentage': 0.80,
              },
            ];
            
            final story = stories[index];
            return RecentStoryGridCard(
              title: story['title'] as String,
              amountText: story['amountText'] as String,
              percentage: story['percentage'] as double,
            );
          },
          childCount: isLoading ? 4 : 4,
        ),
      ),
    );
  }
}
