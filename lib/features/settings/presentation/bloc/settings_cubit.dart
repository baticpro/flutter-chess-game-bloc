import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/features/settings/domain/usecases/settings_usecase.dart';
import 'package:flutter_chess_game/features/settings/presentation/bloc/settings_state.dart';

base class SettingsCubit extends Cubit<SettingsState> {
  final SettingsUseCase settingsUseCase;

  SettingsCubit(
    super.initialState, {
    required this.settingsUseCase,
  });

  void setDifficulty(double value) {
    settingsUseCase.settings.levelOfAI = value.toInt();
    emit(state.copyWith(difficulty: value));
  }

  void setVolume(double value) {
    settingsUseCase.settings.volume = value;
    emit(state.copyWith(volume: value));
  }
}
