import 'package:flutter_chess_game/core/usecase/usecases_factory.dart';
import 'package:flutter_chess_game/features/game/domain/entities/board.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/board_usecase.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/cell_calculation_usecase.dart';

final class GameUseCasesFactory extends UseCasesFactory {
  late final BoardUseCase boardUseCase;
  late final CellCalculationUseCase cellCalculationUseCase;

  @override
  void createInstances() async {
    final board = Board.startCellPositions();

    cellCalculationUseCase = CellCalculationUseCase(
      board: board,
    );

    boardUseCase = BoardUseCase(
      input: BoardInputUseCase(
        calculator: cellCalculationUseCase,
      ),
      board: board,
    );
  }
}
