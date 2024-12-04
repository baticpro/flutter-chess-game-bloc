import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';

abstract class IFigureMovingCalculator {
  bool hasVerticalWay(Cell from, Cell target);
  bool hasHorizontalWay(Cell from, Cell target);
  bool hasDiagonalWay(Cell from, Cell target);
  bool hasWayForKing(Cell from, Cell target);
  bool hasWayForKnight(Cell from, Cell target);
  bool hasWayForPawn(Cell from, Cell target, bool canDoubleMove);
  bool hasWayForQueen(Cell from, Cell target);
  bool hasWayForRook(Cell from, Cell target);
  Set<String> getAvailablePositionsHash(Cell? fromCell);
}
