import 'package:rental_application/models/proterty_model.dart';

enum BookingStatus { upcoming, ongoing, completed, cancelled }

class Booking {
  final String id;
  final Property property;
  final DateTime checkIn;
  final DateTime checkOut;
  final double totalPrice;
  final BookingStatus status;
  final DateTime bookingData;

  Booking({
    required this.id,
    required this.property,
    required this.checkIn,
    required this.checkOut,
    required this.totalPrice,
    required this.status,
    DateTime? bookingDate,
  }) : this.bookingData = bookingDate ?? DateTime.now();

  static List<Booking> dummyBookings = [
    /**
    Booking(
      id: '1',
      property: Property.dummyProperties[0],
      checkIn: DateTime.now().add(const Duration(days: 5)),
      checkOut: DateTime.now().add(const Duration(days: 10)),
      totalPrice: 3500 * 5,
      status: BookingStatus.upcoming,
      bookingDate: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Booking(
      id: '2',
      property: Property.dummyProperties[1],
      checkIn: DateTime.now().add(const Duration(days: 2)),
      checkOut: DateTime.now().add(const Duration(days: 3)),
      totalPrice: 2500 * 5,
      status: BookingStatus.ongoing,
      bookingDate: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Booking(
      id: '3',
      property: Property.dummyProperties[3],
      checkIn: DateTime.now().add(const Duration(days: 2)),
      checkOut: DateTime.now().add(const Duration(days: 3)),
      totalPrice: 1200 * 5,
      status: BookingStatus.completed,
      bookingDate: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Booking(
      id: '4',
      property: Property.dummyProperties[3],
      checkIn: DateTime.now().add(const Duration(days: 20)),
      checkOut: DateTime.now().add(const Duration(days: 30)),
      totalPrice: 430 * 5,
      status: BookingStatus.upcoming,
      bookingDate: DateTime.now().subtract(const Duration(days: 5)),
    ), */
  ];
}
