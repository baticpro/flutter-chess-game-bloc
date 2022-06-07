import 'package:flutter/material.dart';
import 'package:flutter_chess_game/models/figure.dart';

class FigureWidget extends StatelessWidget {
  final Figure figure;

  const FigureWidget({Key? key, required this.figure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      figure.imageAsset,
      fit: BoxFit.fill,
    );
  }
}
