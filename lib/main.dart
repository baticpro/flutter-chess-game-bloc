import 'package:flutter/material.dart';
import 'package:flutter_chess_game/bloc/app_blocs.dart';
import 'package:flutter_chess_game/features/game/presentation/pages/game_page.dart';

void main() {
  createAppBlocs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chess Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GamePage(),
    );
  }
}
