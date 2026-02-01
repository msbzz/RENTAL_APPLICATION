import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: AppColors.background,
      title: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Location',
            style: TextStyle(color: AppColors.textSecondary, fontSize: 14.sp),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: AppColors.primary, size: 20.sp),
              Text(
                'San Francisco, CA',
                style: TextStyle(color: AppColors.textPrimary, fontSize: 16.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppColor {}
