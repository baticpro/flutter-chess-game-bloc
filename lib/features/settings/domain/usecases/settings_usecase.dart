import 'package:flutter_chess_game/core/usecase/usecase.dart';
import 'package:flutter_chess_game/features/settings/domain/entities/settings.dart';

final class SettingsUseCase extends UseCase {
  final Settings settings;

  SettingsUseCase({
    required this.settings,
    super.input,
  });

  void setVolume(double volume) {
    settings.volume = volume;
  }

  void setLevelOfAI(int level) {
    settings.levelOfAI = level;
  }
}
