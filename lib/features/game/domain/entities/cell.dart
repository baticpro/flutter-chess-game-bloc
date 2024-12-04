import 'package:flutter_chess_game/features/game/domain/entities/cell_position.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/entities/game_colors.dart';
import 'package:flutter_chess_game/features/game/domain/entities/i_cell_calculator.dart';

class Cell {
  final GameColors color;
  final CellPosition position;

  Figure? _figure;

  bool get occupied => _figure != null;

  bool get isBlack => color == GameColors.black;
  bool get isWhite => color == GameColors.white;

  String get positionHash => '${position.x}-${position.y}';

  Cell({required this.color, required this.position});

  Cell.white({required this.position}) : color = GameColors.white;
  Cell.black({required this.position}) : color = GameColors.black;

  void setFigure(Figure figure) {
    _figure = figure;
  }

  Figure? getFigure() {
    return _figure;
  }

  bool occupiedByEnemy(Cell target) {
    if (target.occupied) {
      assert(occupied);
      return _figure!.color != target.getFigure()!.color;
    }

    return false;
  }

  Figure? moveFigureAndReturnLost(
    Cell target,
    IFigureMovingCalculator calculator,
  ) {
    if (!occupied) {
      return null;
    }

    final figure = _figure!;

    if (figure.availableForMove(target, calculator)) {
      if (target.occupied) {
        assert(target.getFigure() != null);

        return target.getFigure();
      }

      target.setFigure(figure);
      figure.onMoved(target);

      _figure = null;
    }

    return null;
  }
}
