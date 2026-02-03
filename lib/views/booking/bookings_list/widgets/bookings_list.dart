import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/booking_model.dart';
import 'package:rental_application/views/booking/bookings_list/widgets/booking_card.dart';

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
            SizedBox(height: 16.h),
            Text(
              'No ${status.name} booking',
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemBuilder: (context, index) {
        final booking = bookings[index];
        return BookingCard(booking: booking);
      },
    );
  }
}
