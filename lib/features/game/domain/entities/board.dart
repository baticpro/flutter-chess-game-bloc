import 'package:flutter_chess_game/config/config.dart';
import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/entities/cell_position.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figures/bishop.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figures/king.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figures/knight.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figures/pawn.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figures/queen.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figures/rook.dart';
import 'package:flutter_chess_game/features/game/domain/entities/game_colors.dart';

class Board {
  final List<List<Cell>> cells;

  Board({
    required this.cells,
  });

  factory Board.startCellPositions() {
    return Board(cells: [])
      ..createCells()
      ..putFigures();
  }

  void createCells() {
    for (int y = 0; y < GameConfig.boardSize; y++) {
      final List<Cell> row = [];

      for (int x = 0; x < GameConfig.boardSize; x++) {
        if ((x + y) % 2 != 0) {
          row.add(Cell.white(position: CellPosition(x, y)));
        } else {
          row.add(Cell.black(position: CellPosition(x, y)));
        }
      }

      cells.add(row);
    }
  }

  Board copyThis() {
    return Board(cells: cells);
  }

  Cell getCellAt(int x, int y) {
    return cells[y][x];
  }

  putFigures() {
    _putPawns();
    _putBishops();
    _putKnights();
    _putRooks();
    _putQueens();
    _putKings();
  }

  _putPawns() {
    for (int i = 0; i < 8; i++) {
      Pawn(color: GameColors.white, cell: getCellAt(i, 6));
      Pawn(color: GameColors.black, cell: getCellAt(i, 1));
    }
  }

  _putBishops() {
    Bishop(color: GameColors.white, cell: getCellAt(2, 7));
    Bishop(color: GameColors.white, cell: getCellAt(5, 7));
    Bishop(color: GameColors.black, cell: getCellAt(2, 0));
    Bishop(color: GameColors.black, cell: getCellAt(5, 0));
  }

  _putKnights() {
    Knight(color: GameColors.white, cell: getCellAt(1, 7));
    Knight(color: GameColors.white, cell: getCellAt(6, 7));
    Knight(color: GameColors.black, cell: getCellAt(1, 0));
    Knight(color: GameColors.black, cell: getCellAt(6, 0));
  }

  _putRooks() {
    Rook(color: GameColors.white, cell: getCellAt(0, 7));
    Rook(color: GameColors.white, cell: getCellAt(7, 7));
    Rook(color: GameColors.black, cell: getCellAt(0, 0));
    Rook(color: GameColors.black, cell: getCellAt(7, 0));
  }

  _putKings() {
    King(color: GameColors.white, cell: getCellAt(4, 7));
    King(color: GameColors.black, cell: getCellAt(4, 0));
  }

  _putQueens() {
    Queen(color: GameColors.white, cell: getCellAt(3, 7));
    Queen(color: GameColors.black, cell: getCellAt(3, 0));
  }

  @override
  String toString() {
    return cells.fold('\n', (result, row) {
      final rowString = '[${row.map((cell) {
        return cell.getFigure()?.toString()[0] ?? '.';
      }).join(' ')}]';
      return '$result$rowString\n';
    });
  }
}
