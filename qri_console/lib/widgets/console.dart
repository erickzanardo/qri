import 'package:flutter/material.dart';

import './console_button.dart';
import './game_screen.dart';
import './direction_pad.dart';
import './action_buttons_group.dart';

class _LandscapeConsole extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return Row(children: [
      Expanded(flex: 2, child: DirectionPad(
              onDirectionButtonUp: (dir) => print(dir),
              onDirectionButtonDown: (dir) => print(dir),
      )),
      Expanded(flex: 6, child: GameScreen()),
      Expanded(flex: 2, child: ActionButtonsGroup(
              onActionButtonUp: (button) => print(button),
              onActionButtonDown: (button) => print(button),
      )),
    ]);
  }
}

class _PortraitConsole extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return Column(children: [
      Expanded(child: GameScreen()),
      Expanded(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(child: DirectionPad(
                    onDirectionButtonUp: (dir) => print(dir),
                    onDirectionButtonDown: (dir) => print(dir),
            )),
            Expanded(child: ActionButtonsGroup(
                    onActionButtonUp: (button) => print(button),
                    onActionButtonDown: (button) => print(button),
            )),
      ])),
    ]);
  }
}

class Console extends StatefulWidget {
  @override
  State createState() => _ConsoleState();
}

class _ConsoleState extends State<Console> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(body: SafeArea(child: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _PortraitConsole(); 
          } else {
            return _LandscapeConsole();
          }
        }
    )));
  }
}
