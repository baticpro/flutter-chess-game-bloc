import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/bloc/states/game_state.dart';
import 'package:flutter_chess_game/models/board.dart';
import 'package:flutter_chess_game/models/cell.dart';
import 'package:flutter_chess_game/models/game_colors.dart';
import 'package:flutter_chess_game/models/lost_figures.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit(GameState initialState) : super(initialState);

  factory GameCubit.initial() {
    final board =
        Board(cells: [], whiteLost: LostFigures(), blackLost: LostFigures());
    board.createCells();
    board.putFigures();

    return GameCubit(GameState(
        activeColor: GameColors.white,
        selectedCell: null,
        board: board,
        availablePositionsHash: {}));
  }

  void selectCell(Cell? newCell) {
    emit(state.copyWith(
        selectedCell: Wrapped.value(newCell),
        availablePositionsHash:
            state.board.getAvailablePositionsHash(newCell)));
  }

  void moveFigure(Cell toCell) {
    if (state.selectedCell == null) {
      return;
    }

    state.selectedCell!.moveFigure(toCell);
    emit(state.copyWith(
        board: state.board.copyThis(),
        activeColor: state.activeColor.getOpposite()));
    selectCell(null);
  }
}
