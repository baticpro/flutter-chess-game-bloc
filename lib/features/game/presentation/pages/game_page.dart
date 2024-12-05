import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/game_usecases_factory.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_cubit.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_state.dart';
import 'package:flutter_chess_game/features/game/presentation/models/game_mode.dart';
import 'package:flutter_chess_game/features/game/presentation/pages/game_screen.dart';

@RoutePage()
class GamePage extends StatelessWidget implements AutoRouteWrapper {
  const GamePage({super.key, required this.mode});

  final GameMode mode;

  @override
  Widget wrappedRoute(BuildContext context) {
    final useCases = GameUseCasesFactory()..createInstances();

    return BlocProvider(
      create: (_) => GameCubit(
        GameState.initial(),
        boardUseCase: useCases.boardUseCase,
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GameScreen();
  }
}
