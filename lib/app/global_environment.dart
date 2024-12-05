import 'package:flutter_chess_game/features/settings/domain/usecases/settings_usecases_factory.dart';
import 'package:get_it/get_it.dart';

Future<void> createGlobalDependencies() async {
  GetIt.I.registerSingleton<SettingsUseCasesFactory>(
    SettingsUseCasesFactory()..createInstances(),
  );
}
