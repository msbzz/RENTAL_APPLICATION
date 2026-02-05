import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:rental_application/core/constants/color_constants.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final DateTime timestamp;
  final bool isMe;

  const MessageBubble({
    super.key,
    required this.message,
    required this.timestamp,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 8.h,
          left: isMe ? 48.w : 0,
          right: isMe ? 0 : 48.h,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isMe ? AppColors.primary : AppColors.surface,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: isMe
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: TextStyle(
                color: isMe ? AppColors.surface : AppColors.textPrimary,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 4.h),
            Text(DateFormat('hh:mm a').format(timestamp)),
          ],
        ),
      ),
    );
  }
}
