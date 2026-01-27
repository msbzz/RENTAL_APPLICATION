import 'package:go_router/go_router.dart';
import 'package:rental_application/views/auth/login_screen.dart';
import 'package:rental_application/views/onboarding/onboarding_screen.dart';
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
  ],
);
