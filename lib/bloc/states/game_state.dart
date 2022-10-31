import 'package:flutter_chess_game/models/board.dart';
import 'package:flutter_chess_game/models/cell.dart';
import 'package:flutter_chess_game/models/game_colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const GameState._();

  const factory GameState({
    required Board board,
    required Cell? selectedCell,
    required Set<String> availablePositionsHash,
    required GameColors activeColor,
    required bool isAIthinking,
  }) = _GameState;
}

GameState createInitialGameState(Board board) => GameState(
    activeColor: GameColors.white,
    selectedCell: null,
    board: board,
    isAIthinking: false,
    availablePositionsHash: {});
