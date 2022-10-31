import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/bloc/cubits/settings_cubit.dart';
import 'package:flutter_chess_game/bloc/states/game_state.dart';
import 'package:flutter_chess_game/bloc/states/settings_state.dart';
import 'package:flutter_chess_game/models/board.dart';
import 'package:flutter_chess_game/models/cell.dart';
import 'package:flutter_chess_game/models/game_colors.dart';
import 'package:flutter_chess_game/models/lost_figures.dart';
import 'package:flutter_chess_game/repositories/ai_repository.dart';
import 'package:flutter_chess_game/services/loggers/move_logger.dart';
import 'package:get_it/get_it.dart';

class GameCubit extends Cubit<GameState> {
  final MoveLogger _moveLogger;
  final AIRepository _aiRepository;

  GameCubit(GameState initialState, this._moveLogger, this._aiRepository)
      : super(initialState);

  factory GameCubit.initial() {
    final board =
        Board(cells: [], whiteLost: LostFigures(), blackLost: LostFigures());
    board.createCells();
    board.putFigures();

    return GameCubit(createInitialGameState(board), createMoveLogger(),
        AIRepository.initial());
  }

  void startBattle() {
    _moveLogger.clear();
    final settings = _getSettings();

    if (settings.hasAI && !settings.whitePlayer.isHuman) {
      _scheduleAIMove();
    }
  }

  void selectCell(Cell? newCell) {
    emit(state.copyWith(
        selectedCell: newCell,
        availablePositionsHash:
            state.board.getAvailablePositionsHash(newCell)));
  }

  void moveFigure(Cell toCell) async {
    if (state.selectedCell == null) {
      return;
    }

    state.selectedCell!.moveFigure(toCell);

    // if we play with AI
    if (_getSettings().hasAI) {
      final nextColor = state.activeColor.getOpposite();
      final nextPlayer = _getSettings().getPlayerByColor(nextColor);

      if (nextPlayer.isHuman) {
        return;
      }

      await _scheduleAIMove();
    }

    _moveLogger.add(toCell);

    emit(state.copyWith(
        board: state.board.copyThis(),
        activeColor: state.activeColor.getOpposite()));

    selectCell(null);
  }

  Future<void> _scheduleAIMove() async {
    state.copyWith(isAIthinking: true);

    await _aiRepository.fetchBestMove(board: state.board);

    state.copyWith(isAIthinking: false);
  }

  SettingsState _getSettings() {
    return GetIt.I<SettingsCubit>().state;
  }
}
