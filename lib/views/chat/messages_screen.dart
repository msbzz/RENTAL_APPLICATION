import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/common/widgets/page_layout.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/message.dart';
import 'package:rental_application/views/chat/widget/message_card.dart';

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

    return PageLayout(
      title: 'Messages',
      body: Container(
        color: AppColors.surface,
        child: userMessages.isEmpty
            ? _buildEmptyState(context, isLandLord)
            : CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 16.h,
                      ),
                      child: Text(
                        'Recents Messages',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final message = userMessages[index];
                      return MessageCard(
                        message: message,
                        isLandLord: isLandLord,
                        userId: userId,
                      );
                    }, childCount: userMessages.length),
                  ),
                ],
              ),
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
              SizedBox(height: 24.h),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  backgroundColor: AppColors.primary.withValues(alpha: 0.08),
                ),
                label: Text(
                  'Browse Properties',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
