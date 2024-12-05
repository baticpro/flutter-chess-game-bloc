import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/features/settings/domain/usecases/settings_usecases_factory.dart';
import 'package:flutter_chess_game/features/settings/presentation/bloc/settings_cubit.dart';
import 'package:flutter_chess_game/features/settings/presentation/bloc/settings_state.dart';
import 'package:flutter_chess_game/features/settings/presentation/page/settings_screen.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class SettingsPage extends StatelessWidget implements AutoRouteWrapper {
  const SettingsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final settingsUseCase =
        GetIt.I.get<SettingsUseCasesFactory>().settingsUseCase;

    return BlocProvider(
      create: (_) => SettingsCubit(
        SettingsState(
          difficulty: settingsUseCase.settings.volume,
          volume: settingsUseCase.settings.levelOfAI.toDouble(),
        ),
        settingsUseCase: settingsUseCase,
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SettingsScreen();
  }
}
