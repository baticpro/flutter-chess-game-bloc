import 'package:flutter_chess_game/models/board.dart';
import 'package:flutter_chess_game/models/cell.dart';
import 'package:flutter_chess_game/models/game_colors.dart';

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}

class GameState {
  final Board board;
  final Cell? selectedCell;
  final Set<String> availablePositionsHash;
  final GameColors activeColor;
  final bool isAIthinking;

  GameState(
      {required this.selectedCell,
      required this.availablePositionsHash,
      required this.activeColor,
      required this.isAIthinking,
      required this.board});

  GameState copyWith({
    final Wrapped<Cell?>? selectedCell,
    final Set<String>? availablePositionsHash,
    final Board? board,
    final GameColors? activeColor,
    final bool? isAIthinking,
  }) {
    return GameState(
      board: board ?? this.board,
      activeColor: activeColor ?? this.activeColor,
      availablePositionsHash:
          availablePositionsHash ?? this.availablePositionsHash,
      selectedCell:
          selectedCell != null ? selectedCell.value : this.selectedCell,
      isAIthinking: isAIthinking ?? this.isAIthinking,
    );
  }
}
