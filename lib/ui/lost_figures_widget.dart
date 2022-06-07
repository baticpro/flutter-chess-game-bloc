import 'package:flutter/material.dart';
import 'package:flutter_chess_game/models/figure.dart';

class LostFiguresWidget extends StatelessWidget {
  final List<Figure> figures;

  const LostFiguresWidget({Key? key, required this.figures}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: figures.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Image.asset(figures[0].imageAsset),
              width: 30,
              height: 40,
            );
          }),
    );
  }
}
