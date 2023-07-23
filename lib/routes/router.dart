import 'package:go_router/go_router.dart';
import 'package:butani/routes/routes_name.dart';

import '../module/dashboard/view/dashboard_view.dart';
import '../module/home/view/home_view.dart';
import '../module/login/view/login_view.dart';
import '../module/register/view/register_view.dart';
import '../module/splashscreen/view/splashscreen_view.dart';

// GoRouter configuration

final router = GoRouter(
  initialLocation: '/splashscreen1',
  routes: [
    GoRoute(
      path: '/splashscreen1',
      name: Routes.splashScreen1,
      builder: (context, state) => const SplashscreenView(),
    ),
    GoRoute(
        path: '/login',
        name: Routes.login,
        builder: (context, state) => const LoginView(),
        routes: [
          GoRoute(
            path: 'register',
            name: Routes.register,
            builder: (context, state) => const RegisterView(),
          ),
        ]),
    GoRoute(
      path: '/home',
      name: Routes.home,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/dashboard',
      name: Routes.dashboard,
      builder: (context, state) => const DashboardView(),
    ),
  ],
);
