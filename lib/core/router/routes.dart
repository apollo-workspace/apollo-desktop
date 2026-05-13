import 'package:go_router/go_router.dart';
import 'package:notebook_control_desktop/modules/home/presentation/pages/home_page.dart';
import 'package:notebook_control_desktop/modules/splash/presentation/pages/splash_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return HomePage();
      },
    ),
  ],
);
