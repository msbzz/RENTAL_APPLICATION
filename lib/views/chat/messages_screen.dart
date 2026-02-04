import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/common/widgets/page_layout.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/message.dart';

class MessagesScreen extends StatelessWidget {
  final bool isLandLord;
  final String userId;

  const MessagesScreen({
    super.key,
    required this.isLandLord,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    final userMessages = Message.dummyMessages
        .where((m) => m.senderId == userId || m.recieverId == userId)
        .toList();

    //debugPrint('Array messages ==>>>> ${userMessages.length.toString()}');
    return PageLayout(
      title: 'Messages',
      body: Container(
        color: AppColors.surface,
        child: userMessages.isEmpty
            ? _buildEmptyState(context, isLandLord)
            : CustomScrollView(),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, bool isLandLord) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(32.w),
        margin: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(24.w),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.08),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.chat_bubble_outline_outlined,
                size: 48.sp,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'No Messages Yet',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            if (!isLandLord) ...[
              SizedBox(height: 12.h),
              Text(
                'Start Chating with property owners',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
