import 'package:flutter/material.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/views/profile/widget/profile_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          ProfileAppBar(name: 'John Doe', email: 'john.doe@example.com'),
        ],
      ),
    );
  }
}
