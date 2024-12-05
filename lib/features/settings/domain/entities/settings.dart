base class Settings {
  int levelOfAI;
  double volume;
  String playerName;

  Settings({
    required this.levelOfAI,
    required this.volume,
    required this.playerName,
  });

  Settings.initial()
      : levelOfAI = 5,
        volume = 15,
        playerName = 'Player';
}
