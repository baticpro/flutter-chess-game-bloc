// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_chess_game/features/game/presentation/models/game_mode.dart'
    as _i5;
import 'package:flutter_chess_game/features/game/presentation/pages/game_page.dart'
    as _i1;
import 'package:flutter_chess_game/features/home/presentation/pages/home_page.dart'
    as _i2;

/// generated route for
/// [_i1.GamePage]
class GameRoute extends _i3.PageRouteInfo<GameRouteArgs> {
  GameRoute({
    _i4.Key? key,
    required _i5.GameMode mode,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(
            key: key,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GameRouteArgs>();
      return _i1.GamePage(
        key: args.key,
        mode: args.mode,
      );
    },
  );
}

class GameRouteArgs {
  const GameRouteArgs({
    this.key,
    required this.mode,
  });

  final _i4.Key? key;

  final _i5.GameMode mode;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}
