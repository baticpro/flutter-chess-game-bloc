import 'dart:math';

const rowToLetter = {
  0: 'a',
  1: 'b',
  2: 'c',
  3: 'd',
  4: 'e',
  5: 'f',
  6: 'g',
  7: 'h',
};

class CellPosition {
  final int x;
  final int y;

  CellPosition(this.x, this.y);

  int get magnitude => sqrt(x * x + y * y).toInt();

  String get letter => rowToLetter[x]! + (y + 1).toString();
}
