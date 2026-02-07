import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';

class ProfileAppBar extends StatelessWidget {
  final String name;
  final String email;
  final String? avatarUrl;
  final double expandedHeight;
  const ProfileAppBar({
    super.key,
    required this.name,
    required this.email,
    this.avatarUrl,
    this.expandedHeight = 200,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      pinned: true,
      backgroundColor: AppColors.primary,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.primary,
                AppColors.primary.withValues(alpha: 0.8),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.surface,
                backgroundImage: avatarUrl != null
                    ? NetworkImage(avatarUrl!) as ImageProvider
                    : AssetImage('assets/images/user_avatar.jpg'),
              ),
              SizedBox(height: 12.h),
              Text(
                name,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.surface,
                ),
              ),
              Text(
                email,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.surface.withValues(alpha: 0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
