import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure_types.dart';

final class Pawn extends Figure {
  bool _canDoubleMove = true;

  Pawn({required super.color, required super.cell})
      : super(type: FigureTypes.pawn);

  @override
  onMoved(Cell to) {
    super.onMoved(to);
    _canDoubleMove = false;
  }

  @override
  bool availableForMove(to, calculator) {
    if (!super.availableForMove(to, calculator)) {
      return false;
    }

    return calculator.hasWayForPawn(cell, to, _canDoubleMove);
  }
}
