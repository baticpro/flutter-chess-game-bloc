import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chess_game/app/game_app.dart';
import 'package:flutter_chess_game/app/game_enviroment.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await createDependencies();

      runApp(GameApp());
    },
    (error, stack) => {},
  );
}
