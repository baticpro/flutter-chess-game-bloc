import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure_types.dart';

final class Knight extends Figure {
  Knight({required super.color, required super.cell})
      : super(type: FigureTypes.knight);

  @override
  bool availableForMove(to, calculator) {
    if (!super.availableForMove(to, calculator)) return false;

    return calculator.hasWayForKnight(cell, to);
  }
}
