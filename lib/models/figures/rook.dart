import 'package:flutter_chess_game/models/cell.dart';
import 'package:flutter_chess_game/models/cell_calculator.dart';
import 'package:flutter_chess_game/models/figure.dart';
import 'package:flutter_chess_game/models/figure_types.dart';
import 'package:flutter_chess_game/models/game_colors.dart';

class Rook extends Figure {
  Rook({required GameColors color, required Cell cell})
      : super(color: color, cell: cell, type: FigureTypes.rook);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) return false;
    return CellCalculator.hasWayForRook(cell, to);
  }
}
