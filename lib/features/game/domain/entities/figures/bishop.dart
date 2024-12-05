import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure_types.dart';
import 'package:flutter_chess_game/features/game/domain/entities/i_figure_moving_calculator.dart';

final class Bishop extends Figure {
  Bishop({required super.color, required super.cell})
      : super(type: FigureTypes.bishop);

  @override
  bool availableForMove(Cell to, IFigureMovingCalculator calculator) {
    if (!super.availableForMove(to, calculator)) return false;
    return calculator.hasDiagonalWay(cell, to);
  }
}
