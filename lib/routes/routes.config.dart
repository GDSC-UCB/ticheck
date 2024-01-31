import 'package:go_router/go_router.dart';
import '../view/view.dart';
import 'routes.const.dart';
import 'routes.name.dart';

class AppRoutes {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteName.splash,
        path: RoutePath.splash,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        name: RouteName.home,
        path: RoutePath.home,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
        routes: [
          GoRoute(
            name: RouteName.notif,
            path: RoutePath.notif,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: NotificationPage(),
            ),
          ),
          GoRoute(
            name: RouteName.list,
            path: RoutePath.list,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ListMembers(),
            ),
            routes: [
              GoRoute(
                name: RouteName.notif2,
                path: RoutePath.notif2,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Notif2(),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: RouteName.welcome,
        path: RoutePath.welcome,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: WelcomePage(),
        ),
      ),
      GoRoute(
        name: RouteName.auth,
        path: RoutePath.auth,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AuthScreen(),
        ),
      ),
    ],
  );
}
