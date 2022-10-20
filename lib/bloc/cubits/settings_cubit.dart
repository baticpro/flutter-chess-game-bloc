import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/bloc/states/settings_state.dart';
import 'package:flutter_chess_game/models/board.dart';
import 'package:flutter_chess_game/models/lost_figures.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(SettingsState initialState) : super(initialState);

  factory SettingsCubit.initial() {
    final board =
        Board(cells: [], whiteLost: LostFigures(), blackLost: LostFigures());
    board.createCells();
    board.putFigures();

    return SettingsCubit(const SettingsState(
      playerColor: null,
      difficulty: 1,
    ));
  }
}
