import 'package:flutter_chess_game/models/game_colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required GameColors? playerColor,
    required int difficulty,
  }) = _SettingsState;
}
