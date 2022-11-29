import 'dart:io';

import 'package:flutter_bloc_testdrive/shared/presentation/menu_button.dart';
import 'package:flutter/material.dart';

//----------------------------------------------------------------------------------------------------------------------
//
//  MAIN MENU WIDGET
//
//----------------------------------------------------------------------------------------------------------------------

class MainMenu extends StatelessWidget {
  //--------------------------------------------------------------------------------------------------------------------
  //  Construct
  //--------------------------------------------------------------------------------------------------------------------

  const MainMenu({super.key, required this.itemsVisible});

  //--------------------------------------------------------------------------------------------------------------------
  //  Props
  //--------------------------------------------------------------------------------------------------------------------

  final bool itemsVisible;

  //--------------------------------------------------------------------------------------------------------------------
  //  Build
  //--------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: itemsVisible
          ? [
              MenuButton(
                label: "Home",
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/home");
                },
              ),
              MenuButton(
                label: "Settings",
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/settings");
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
