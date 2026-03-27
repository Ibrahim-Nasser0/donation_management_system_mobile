import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CaseHeroSection extends StatelessWidget {
  const CaseHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _CaseHeroDelegate(),
    );
  }
}

class _CaseHeroDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double progress = shrinkOffset / maxExtent;
    
    return Stack(
      fit: StackFit.expand,
      children: [
        // Image Parallax
        Transform.translate(
          offset: Offset(0, shrinkOffset * 0.5),
          child: Transform.scale(
            scale: 1.0 + (progress * 0.2),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(32.r * (1 - progress)),
                ),
              ),
              child: Center(
                child: Icon(Icons.image, size: 50.sp, color: Colors.grey[500]),
              ),
            ),
          ),
        ),
        
        // Gradient Overlay
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withValues(alpha: 0.1),
                Colors.transparent,
                Colors.black.withValues(alpha: 0.3 * (1 - progress)),
              ],
            ),
          ),
        ),
        
        // Floating Label
        Positioned(
          bottom: 24.h * (1 - progress),
          left: 0,
          right: 0,
          child: Opacity(
            opacity: (1 - progress).clamp(0, 1),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.verified, color: const Color(0xFF8D6E63), size: 20.sp),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VERIFIED CAUSE',
                          style: GoogleFonts.montserrat(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.lightText,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Text(
                          'Community Trust Fund',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.headerText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 300.h;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant _CaseHeroDelegate oldDelegate) => true;
}
