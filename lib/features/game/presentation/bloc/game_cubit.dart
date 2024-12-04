import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/features/game/domain/entities/board.dart';
import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/entities/game_colors.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/board_usecase.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/cell_calculation_usecase.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_state.dart';

class GameCubit extends Cubit<GameState> {
  final BoardUseCase boardUseCase;

  GameCubit(
    super.initialState, {
    required this.boardUseCase,
  });

  factory GameCubit.initial() {
    final board = Board.startCellPositions();
    final boardUseCase = BoardUseCase(
      input: BoardInputUseCase(
        calculator: CellCalculationUseCase(
          board: board,
        ),
      ),
      board: board,
    );

    return GameCubit(
      GameState(
        activeColor: GameColors.white,
        selectedCell: null,
        board: board,
        isAIthinking: false,
        availablePositionsHash: {},
        blackLost: [],
        whiteLost: [],
      ),
      boardUseCase: boardUseCase,
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
