import 'package:flutter/material.dart';
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
        ),
      ),
    );
  }
}
