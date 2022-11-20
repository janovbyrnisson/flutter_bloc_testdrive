import 'dart:io';

import 'package:flutter_bloc_testdrive/shared/presentation/menu_button.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key, required this.itemsVisible});

  final bool itemsVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: itemsVisible
          ? [
              MenuButton(
                label: "Home",
                onPressed: () {
                  // Navigate to home page widget - TBD
                },
              ),
              MenuButton(
                label: "Settings",
                onPressed: () {
                  // Navigate to settings page widget - TBD
                },
              ),
              MenuButton(
                label: "Quit",
                onPressed: () {
                  exit(0);
                },
              ),
            ]
          : [],
    );
  }
}
