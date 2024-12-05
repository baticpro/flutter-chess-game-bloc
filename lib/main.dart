import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chess_game/app/game_app.dart';
import 'package:flutter_chess_game/app/global_environment.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await createGlobalDependencies();

      runApp(GameApp());
    },
    (error, stack) => {
      // TODO(batraz): Implement error handling
    },
  );
}
