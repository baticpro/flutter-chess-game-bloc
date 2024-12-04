import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure_types.dart';

class Rook extends Figure {
  Rook({required super.color, required super.cell})
      : super(type: FigureTypes.rook);

  @override
  bool availableForMove(to, calculator) {
    if (!super.availableForMove(to, calculator)) return false;
    return calculator.hasWayForRook(cell, to);
  }
}
