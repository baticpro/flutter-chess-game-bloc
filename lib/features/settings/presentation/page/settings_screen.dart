import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chess_game/features/settings/presentation/bloc/settings_cubit.dart';
import 'package:flutter_chess_game/features/settings/presentation/bloc/settings_state.dart'; // Import the Cubit file

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Difficulty slider
                const Text(
                  "Difficulty",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Slider(
                  value: state.difficulty,
                  min: 1,
                  max: 100,
                  divisions: 99,
                  label: state.difficulty.round().toString(),
                  onChanged: (value) {
                    context.read<SettingsCubit>().setDifficulty(value);
                  },
                ),
                const SizedBox(height: 20),
                // Volume slider
                const Text(
                  "Volume",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Slider(
                  value: state.volume,
                  min: 0.0,
                  max: 10.0,
                  divisions: 100,
                  label: state.volume.toStringAsFixed(1),
                  onChanged: (value) {
                    context.read<SettingsCubit>().setVolume(value);
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
