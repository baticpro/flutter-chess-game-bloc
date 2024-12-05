import 'package:flutter/material.dart';
import 'package:flutter_chess_game/app/app_router.dart';

class GameApp extends StatelessWidget {
  GameApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Chess Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
