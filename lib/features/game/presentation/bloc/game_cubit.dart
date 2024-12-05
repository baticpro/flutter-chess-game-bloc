import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/board_usecase.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_state.dart';

base class GameCubit extends Cubit<GameState> {
  final BoardUseCase boardUseCase;

  GameCubit(
    super.initialState, {
    required this.boardUseCase,
  }) {
    emit(
      state.copyWith(
        board: boardUseCase.board,
      ),
    );
  }

  void selectCell(Cell? newCell) {
    emit(
      state.copyWith(
        selectedCell: newCell,
        availablePositionsHash: boardUseCase.getAvailablePositionsHash(newCell),
      ),
    );
  }

  void moveFigure(Cell toCell) async {
    if (state.selectedCell == null) {
      return;
    }

    boardUseCase.moveFigure(state.selectedCell!, toCell);

    emit(
      state.copyWith(
        board: boardUseCase.board,
        activeColor: state.activeColor.getOpposite(),
        whiteLost: boardUseCase.whiteLost,
        blackLost: boardUseCase.blackLost,
      ),
    );

    selectCell(null);
  }
}
