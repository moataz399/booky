

import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter{

static const String homeView='/homeView';

  static final router = GoRouter(
  routes: [
  GoRoute(
  path: '/',
  builder: (context, state) => SplashView(),
  ),

    GoRoute(
      path: homeView,
      builder: (context, state) => HomeView(),
    ),
  ],
  );

}
