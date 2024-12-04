import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/board_usecase.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_cubit.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_state.dart';
import 'package:flutter_chess_game/features/game/presentation/pages/game_page.dart';
import 'package:get_it/get_it.dart';

class GameApp extends StatelessWidget {
  const GameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GameCubit>(
          create: (context) => GameCubit(
            GameState.initial(),
            boardUseCase: GetIt.I<BoardUseCase>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Chess Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const GamePage(),
      ),
    );
  }
}
