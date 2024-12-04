enum GameColors {
  white,
  black;

  @override
  String toString() {
    return name.split('.').last;
  }

  GameColors getOpposite() {
    const oppositeColors = {
      GameColors.white: GameColors.black,
      GameColors.black: GameColors.white,
    };

    return oppositeColors[this]!;
  }
}
