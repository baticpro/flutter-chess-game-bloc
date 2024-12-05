// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_chess_game/features/game/presentation/models/game_mode.dart'
    as _i6;
import 'package:flutter_chess_game/features/game/presentation/pages/game_page.dart'
    as _i1;
import 'package:flutter_chess_game/features/home/presentation/pages/home_page.dart'
    as _i2;
import 'package:flutter_chess_game/features/settings/presentation/page/settings_page.dart'
    as _i3;

/// generated route for
/// [_i1.GamePage]
class GameRoute extends _i4.PageRouteInfo<GameRouteArgs> {
  GameRoute({
    _i5.Key? key,
    required _i6.GameMode mode,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(
            key: key,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GameRouteArgs>();
      return _i4.WrappedRoute(
          child: _i1.GamePage(
        key: args.key,
        mode: args.mode,
      ));
    },
  );
}

class GameRouteArgs {
  const GameRouteArgs({
    this.key,
    required this.mode,
  });

  final _i5.Key? key;

  final _i6.GameMode mode;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRoute extends _i4.PageRouteInfo<void> {
  const SettingsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SettingsPage();
    },
  );
}
