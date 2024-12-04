import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure_types.dart';
import 'package:flutter_chess_game/features/game/domain/entities/game_colors.dart';
import 'package:flutter_chess_game/features/game/domain/entities/i_figure_moving_calculator.dart';

abstract class Figure {
  final GameColors color;
  final FigureTypes type;

  Cell cell;

  bool get isBlack => color == GameColors.black;
  bool get isWhite => color == GameColors.white;

  Figure({
    required this.color,
    required this.cell,
    required this.type,
  }) {
    cell.setFigure(this);
  }

  bool availableForMove(Cell to, IFigureMovingCalculator calculator) {
    if (!to.occupied) {
      return true;
    }

    Figure occupiedFigure = to.getFigure()!;

    if (occupiedFigure.color == color) {
      return false;
    }

    if (occupiedFigure.type == FigureTypes.king) {
      return false;
    }

    return true;
  }

  void onMoved(Cell to) {
    cell = to;
  }

  @override
  toString() => type.name;
}
