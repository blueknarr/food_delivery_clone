import 'package:food_delivery_clone/data/model/restaurant.dart';
import 'package:go_router/go_router.dart';

import '../ui/components/hero_screen.dart';
import '../ui/main_screen.dart';

final router = GoRouter(initialLocation: '/main', routes: [
  GoRoute(
    path: '/main',
    builder: (context, state) => const MainScreen(),
    routes: [
      GoRoute(
        path: 'restaurant',
        builder: (context, state) {
          Restaurant restaurant = state.extra as Restaurant;
          return HeroScreen(restaurant: restaurant);
        },
      ),
    ],
  ),
]);
