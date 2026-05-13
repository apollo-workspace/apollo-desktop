import 'package:go_router/go_router.dart';
import 'package:notebook_control_desktop/core/router/app_paths.dart';
import 'package:notebook_control_desktop/modules/home/presentation/pages/home_page.dart';
import 'package:notebook_control_desktop/modules/settings/presentation/pages/settings_page.dart';
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
      path: AppPaths.home,
      builder: (context, state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: AppPaths.settings,
      builder: (context, state) {
        return SettingsPage();
      },
    ),
  ],
);
