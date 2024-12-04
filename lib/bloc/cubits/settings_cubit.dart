import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/bloc/states/settings_state.dart';
import 'package:flutter_chess_game/features/game/domain/entities/board.dart';
import 'package:flutter_chess_game/features/game/domain/entities/player.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(super.initialState);

  factory SettingsCubit.initial() {
    final board = Board(cells: []);
    board.createCells();
    board.putFigures();

    return SettingsCubit(
      SettingsState(
        whitePlayer: Player.human(),
        blackPlayer: Player.human(),
        difficulty: 1,
      ),
    );
  }
}
