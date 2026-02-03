import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/booking_model.dart';

class BookingsList extends StatelessWidget {
  final BookingStatus status;
  const BookingsList({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final bookings = Booking.dummyBookings
        .where((booking) => booking.status == status)
        .toList();

    debugPrint('BOOKINGS_LIST isEmpty ${bookings.isEmpty}');

    if (bookings.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today_outlined,
              size: 64.sp,
              color: AppColors.textSecondary,
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
