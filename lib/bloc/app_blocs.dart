import 'package:flutter_chess_game/bloc/cubits/settings_cubit.dart';
import 'package:flutter_chess_game/features/game/presentation/bloc/game_cubit.dart';
import 'package:get_it/get_it.dart';

createAppBlocs() {
  GetIt.I.registerSingleton<GameCubit>(GameCubit.initial());
  GetIt.I.registerSingleton<SettingsCubit>(SettingsCubit.initial());
}
