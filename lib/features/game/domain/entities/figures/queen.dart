import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure_types.dart';

final class Queen extends Figure {
  Queen({required super.color, required super.cell})
      : super(type: FigureTypes.queen);

  @override
  bool availableForMove(to, calculator) {
    if (!super.availableForMove(to, calculator)) return false;
    return calculator.hasWayForQueen(cell, to);
  }
}
