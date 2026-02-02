import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/core/constants/text_constants.dart';
import 'package:rental_application/models/proterty_model.dart';
import 'package:rental_application/views/home/widgets/banner_carousel.dart';
import 'package:rental_application/views/home/widgets/home_app_bar.dart';
import 'package:rental_application/views/home/widgets/property_card.dart';
import 'package:rental_application/views/home/widgets/section_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsGeometry.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppTexts.findYourHome,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: AppColors.textSecondary),
                            SizedBox(width: 12.w),
                            Text(
                              AppTexts.searchHint,
                              style: TextStyle(
                                color: AppColors.textSecondary,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsGeometry.only(top: 16.h),
                child: BannerCarousel(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SectionTitle(
                  title: 'Popular Properties',
                  actionText: 'See All',
                  onActionPressed: () {},
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 36.w),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final property = Property.dummyProperties[index];
                  return PropertyCard(property: property, onTap: () {});
                }, childCount: Property.dummyProperties.length),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 260.h,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 12.w,
                  childAspectRatio: 0.65,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
