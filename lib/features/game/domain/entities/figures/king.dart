import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure_types.dart';

class King extends Figure {
  King({required super.color, required super.cell})
      : super(type: FigureTypes.king);

  @override
  bool availableForMove(to, calculator) {
    if (!super.availableForMove(to, calculator)) {
      return false;
    }

    return calculator.hasWayForKing(cell, to);
  }
}
