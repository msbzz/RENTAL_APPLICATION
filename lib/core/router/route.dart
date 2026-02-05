import 'package:go_router/go_router.dart';
import 'package:rental_application/main_layout.dart';
import 'package:rental_application/models/message.dart';
import 'package:rental_application/views/auth/forgot_password_screen.dart';
import 'package:rental_application/views/auth/login_screen.dart';
import 'package:rental_application/views/auth/register_screen.dart';
import 'package:rental_application/views/booking/bookings_list/bookings_list_screen.dart';
import 'package:rental_application/views/chat/messages_screen.dart';
import 'package:rental_application/views/chat/widget/chat_detail_screen.dart';
import 'package:rental_application/views/favorites/favorites_screen.dart';
import 'package:rental_application/views/home/home_screen.dart';
import 'package:rental_application/views/landlord/landlord_bookings/landlord_bookings_screen.dart';
import 'package:rental_application/views/landlord/landlord_dashboard/landlord_dashboard_screen.dart';
import 'package:rental_application/views/landlord/landlord_profile/landlord_profile_screen.dart';
import 'package:rental_application/views/landlord/landlord_properties/landlord_properties_screen.dart';
import 'package:rental_application/views/landlord_layout.dart';
import 'package:rental_application/views/onboarding/onboarding_screen.dart';
import 'package:rental_application/views/profile/profile_screen.dart';
import 'package:rental_application/views/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      name: 'onboarding',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/auth',
      name: 'auth',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      name: 'registrer',
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      name: 'forgot-password',
      builder: (context, state) => ForgotPasswordScreen(),
    ),

    // tenant routes
    ShellRoute(
      builder: (context, state, child) =>
          MainLayout(location: state.uri.toString(), child: child),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
          routes: const [],
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, state) => const FavoritesScreen(),
        ),
        GoRoute(
          path: '/bookings',
          builder: (context, state) => const BookingsListScreen(),
        ),
        GoRoute(
          path: '/messages',
          builder: (context, state) =>
              const MessagesScreen(isLandLord: false, userId: '1'),
          routes: [
            GoRoute(
              path: 'chat',
              builder: (context, state) {
                final message = state.extra as Message;
                return ChatDetailScreen(message: message);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),

    // landLord routes
    ShellRoute(
      builder: (context, state, child) =>
          LandlordLayout(location: state.uri.toString(), child: child),
      routes: [
        GoRoute(
          path: '/landlord/dashboard',
          builder: (context, state) => const LandlordDashboardScreen(),
        ),
        GoRoute(
          path: '/landlord/properties',
          builder: (context, state) => const LandlordPropertiesScreen(),
        ),
        GoRoute(
          path: '/landlord/messages',
          builder: (context, state) =>
              const MessagesScreen(isLandLord: true, userId: '2'),
          routes: [
            GoRoute(
              path: 'chat',
              builder: (context, state) {
                final message = state.extra as Message;
                return ChatDetailScreen(message: message);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/landlord/bookings',
          builder: (context, state) => const LandlordBookingsScreen(),
        ),
        GoRoute(
          path: '/landlord/profile',
          builder: (context, state) => const LandlordProfileScreen(),
        ),
      ],
    ),
  ],
);
