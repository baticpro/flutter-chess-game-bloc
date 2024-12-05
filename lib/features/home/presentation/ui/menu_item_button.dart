import 'package:flutter/material.dart';

class HomeMenuItemButton extends StatelessWidget {
  const HomeMenuItemButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(title),
    );
  }
}
