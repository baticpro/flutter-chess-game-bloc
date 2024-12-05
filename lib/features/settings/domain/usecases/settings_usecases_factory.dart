import 'package:flutter_chess_game/core/usecase/usecases_factory.dart';
import 'package:flutter_chess_game/features/settings/domain/entities/settings.dart';
import 'package:flutter_chess_game/features/settings/domain/usecases/settings_usecase.dart';

final class SettingsUseCasesFactory extends UseCasesFactory {
  late final SettingsUseCase settingsUseCase;

  @override
  void createInstances() async {
    settingsUseCase = SettingsUseCase(settings: Settings.initial());
  }
}
