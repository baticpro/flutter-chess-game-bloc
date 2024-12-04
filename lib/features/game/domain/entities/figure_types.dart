enum FigureTypes {
  king,
  knight,
  pawn,
  queen,
  rook,
  bishop;

  @override
  String toString() {
    return name.split('.').last;
  }
}
