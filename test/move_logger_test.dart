import 'package:flutter_chess_game/core/services/loggers/move_logger.dart';
import 'package:flutter_chess_game/features/game/domain/entities/cell.dart';
import 'package:flutter_chess_game/features/game/domain/entities/cell_position.dart';
import 'package:flutter_chess_game/features/game/domain/entities/game_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Move Logger', () {
    final logger = createMoveLogger();

    test('logger is empty on start', () {
      expect(logger.getAll().length, 0);
    });

    test('logger contain cells correctly', () {
      final cell1 = Cell(
        color: GameColors.white,
        position: CellPosition(0, 0),
      );
      final cell2 = Cell(
        color: GameColors.white,
        position: CellPosition(1, 0),
      );

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
