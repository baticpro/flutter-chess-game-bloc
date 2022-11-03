import 'package:flutter_chess_game/models/cell_position.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('letter position is correct', () {
    expect(CellPosition(0, 0).letter, 'a1');
    expect(CellPosition(7, 0).letter, 'h1');

    expect(CellPosition(1, 3).letter, 'b4');
    expect(CellPosition(6, 3).letter, 'g4');

    expect(CellPosition(3, 6).letter, 'd7');
    expect(CellPosition(4, 6).letter, 'e7');
  });
}
