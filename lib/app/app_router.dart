import 'package:auto_route/auto_route.dart';
import 'package:flutter_chess_game/app/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: GameRoute.page,
        ),
      ];
}
