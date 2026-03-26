import 'package:donation_management_system_mobile/core/constant/app_colors.dart';
import 'package:donation_management_system_mobile/core/shared/widgets/pressable_card.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentStoryGridCard extends StatelessWidget {
  final String title;
  final String amountText;
  final double percentage;

  const RecentStoryGridCard({
    super.key,
    required this.title,
    required this.amountText,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return PressableCard(
      onTap: () => context.push(AppRouter.caseDetailsView),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(Icons.image, color: Colors.grey[500]),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.headerText,
                        height: 1.2,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          amountText,
                          style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2E7D6F),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4.r),
                          child: LinearProgressIndicator(
                            value: percentage,
                            backgroundColor: Colors.grey[200],
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF2E7D6F)),
                            minHeight: 4.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
