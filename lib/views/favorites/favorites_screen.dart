import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/common/widgets/page_layout.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/proterty_model.dart';
import 'package:rental_application/views/home/widgets/property_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'Favorites Screen',
      body: Property.dummyProperties.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    size: 64.sp,
                    color: AppColors.textSecondary,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'No Favorites yet',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Start saving your favorites properties',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            )
          : GridView.builder(
              padding: EdgeInsets.all(16.w),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 260.h,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 12.w,
                childAspectRatio: 0.65,
              ),
              itemCount: Property.dummyProperties.length,
              itemBuilder: (context, index) {
                final property = Property.dummyProperties[index];
                return PropertyCard(onTap: () {}, property: property);
              },
            ),
    );
  }
}
