import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/views/profile/widget/profile_app_bar.dart';
import 'package:rental_application/views/profile/widget/profile_card.dart';
import 'package:rental_application/views/profile/widget/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          ProfileAppBar(name: 'John Doe', email: 'john.doe@example.com'),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  ProfileCard(
                    title: 'Account',
                    items: [
                      ProfileMenuItem(
                        icon: Icons.person_outline,
                        title: 'Person Information',
                        onTap: () {},
                      ),
                      ProfileMenuItem(
                        icon: Icons.payment_outlined,
                        title: 'Payment Methods',
                        onTap: () {},
                      ),
                      ProfileMenuItem(
                        icon: Icons.notifications_outlined,
                        title: 'Notifications',
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  ProfileCard(
                    title: 'Support',
                    items: [
                      ProfileMenuItem(
                        icon: Icons.help_outline,
                        title: 'Help Center',
                        onTap: () {},
                      ),
                      ProfileMenuItem(
                        icon: Icons.policy_outlined,
                        title: 'Privacy Policy',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
