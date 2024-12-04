import 'package:flutter_chess_game/core/usecase/usecase.dart';
import 'package:flutter_chess_game/features/game/domain/entities/board.dart';
import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/usecases/cell_calculation_usecase.dart';

class BoardInputUseCase {
  final CellCalculationUseCase calculator;

  BoardInputUseCase({required this.calculator});
}

class BoardUseCase extends UseCase<BoardInputUseCase> {
  final Board board;

  List<Figure> blackLost;
  List<Figure> whiteLost;

  BoardUseCase({
    required this.board,
    required super.input,
    this.blackLost = const [],
    this.whiteLost = const [],
  });

  void pushFigureLoLost(Figure lostFigure) {
    if (lostFigure.isBlack) {
      blackLost.add(lostFigure);
    }

    if (lostFigure.isWhite) {
      whiteLost.add(lostFigure);
    }
  }

  Set<String> getAvailablePositionsHash(Cell? selectedCell) {
    return input.calculator.getAvailablePositionsHash(selectedCell);
  }

  void moveFigure(Cell fromCell, Cell toCell) async {
    final lostFigure = fromCell.moveFigureAndReturnLost(
      toCell,
      input.calculator,
    );

    if (lostFigure != null) {
      pushFigureLoLost(lostFigure);
    }
  }
}
