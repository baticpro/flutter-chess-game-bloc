import 'package:flutter_chess_game/features/game/domain/entities/board.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/board_usecase.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/cell_calculation_usecase.dart';
import 'package:get_it/get_it.dart';

Future<void> createDependencies() async {
  final board = Board.startCellPositions();

  final cellCalculationUseCase = CellCalculationUseCase(
    board: board,
  );

  final boardUseCase = BoardUseCase(
    input: BoardInputUseCase(
      calculator: cellCalculationUseCase,
    ),
    board: board,
  );

  GetIt.I.registerSingleton<CellCalculationUseCase>(cellCalculationUseCase);
  GetIt.I.registerSingleton<BoardUseCase>(boardUseCase);
}
