import 'package:flutter_chess_game/config/assets.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';

extension FigureImageExtension on Figure {
  get imageAsset => '$figuresAssetPath$color/$type.png';
}
