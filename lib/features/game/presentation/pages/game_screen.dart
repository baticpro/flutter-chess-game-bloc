import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/config/colors.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_cubit.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_state.dart';
import 'package:flutter_chess_game/features/game/presentation/ui/board_widget.dart';
import 'package:flutter_chess_game/features/game/presentation/ui/lost_figures_widget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game')),
      backgroundColor: AppColors.white,
      body: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 720),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LostFiguresWidget(figures: state.blackLost),
                  BoardWidget(
                    availablePositionsHash: state.availablePositionsHash,
                    board: state.board,
                    selectedCell: state.selectedCell,
                  ),
                  LostFiguresWidget(figures: state.whiteLost),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
