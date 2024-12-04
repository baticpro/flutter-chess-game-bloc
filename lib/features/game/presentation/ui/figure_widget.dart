import 'package:flutter/material.dart';
import 'package:flutter_chess_game/features/game/domain/entities/figure.dart';
import 'package:flutter_chess_game/features/game/domain/extensions/figure_extensions.dart';

class FigureWidget extends StatelessWidget {
  final Figure figure;

  const FigureWidget({super.key, required this.figure});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      figure.imageAsset,
      fit: BoxFit.fill,
    );
  }
}
