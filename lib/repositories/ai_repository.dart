import 'package:flutter_chess_game/models/board.dart';
import 'package:flutter_chess_game/models/cell.dart';
import 'package:flutter_chess_game/models/cell_position.dart';
import 'package:flutter_chess_game/models/game_colors.dart';
import 'package:flutter_chess_game/services/ai/ai_manager.dart';

class AIRepository {
  final AIManager _aiManager;

  AIRepository(this._aiManager);

  factory AIRepository.initial() {
    return AIRepository(createAIManager());
  }

  Future<Cell> fetchBestMove({required Board board}) async {
    // TODO: call aiManager
    return Cell(
        color: GameColors.white, board: board, position: CellPosition(0, 0));
  }
}
