import 'package:flutter_chess_game/models/board.dart';
import 'package:flutter_chess_game/models/cell.dart';
import 'package:flutter_chess_game/models/cell_position.dart';
import 'package:flutter_chess_game/models/game_colors.dart';
import 'package:flutter_chess_game/models/lost_figures.dart';
import 'package:flutter_chess_game/services/loggers/move_logger.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Move Logger', () {
    final logger = createMoveLogger();

    test('logger is empty on start', () {
      expect(logger.getAll().length, 0);
    });

    test('logger contain cells correctly', () {
      final board =
          Board(cells: [], blackLost: LostFigures(), whiteLost: LostFigures());
      final cell1 = Cell(
          color: GameColors.white, board: board, position: CellPosition(0, 0));
      final cell2 = Cell(
          color: GameColors.white, board: board, position: CellPosition(1, 0));

      logger.add(cell1);
      expect(logger.getAll().length, 1);

      logger.add(cell2);
      expect(logger.getAll().length, 2);

      expect(logger.getAll()[0].positionHash, '0-0');

      logger.remove(cell1);
      expect(logger.getAll()[0].positionHash, '1-0');

      logger.clear();
      expect(logger.getAll().isEmpty, true);
    });
  });
}
