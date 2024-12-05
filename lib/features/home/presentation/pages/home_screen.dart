import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chess_game/app/app_router.gr.dart';
import 'package:flutter_chess_game/features/game/presentation/models/game_mode.dart';
import 'package:flutter_chess_game/features/home/presentation/ui/menu_item_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Menu')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Flutter Chess Game',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            HomeMenuItemButton(
              onTap: () => context.router.push(GameRoute(mode: GameMode.pVsP)),
              title: 'Player vs Player',
            ),
            const SizedBox(height: 20),
            HomeMenuItemButton(
              onTap: () => context.router.push(GameRoute(mode: GameMode.pVsP)),
              title: 'Players vs AI',
            ),
            const SizedBox(height: 20),
            HomeMenuItemButton(
              onTap: () => context.router.push(GameRoute(mode: GameMode.pVsP)),
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
