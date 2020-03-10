import 'package:flutter/material.dart';

import './console_button.dart';

enum ActionButton {
  B, A
}

typedef OnActionButtonUp = Function(ActionButton);
typedef OnActionButtonDown = Function(ActionButton);

class ActionButtonsGroup extends StatelessWidget {
  final OnActionButtonDown onActionButtonDown;
  final OnActionButtonUp onActionButtonUp;

  static const double BUTTON_SIZE = 50;

  ActionButtonsGroup({
    @required this.onActionButtonUp,
    @required this.onActionButtonDown,
  });

  Widget build(BuildContext ctx) {
    return Center(child: Container(
        width: BUTTON_SIZE * 3,
        height: BUTTON_SIZE * 2,
        child: Stack(children: [
          Positioned(
              left: BUTTON_SIZE * 0.5,
              top: BUTTON_SIZE / 2,
              child: ConsoleButton(
                  size: BUTTON_SIZE,
                  color: Theme.of(ctx).primaryColorDark,
                  onTapUp: (_) => onActionButtonUp(ActionButton.B),
                  onTapDown: (_) => onActionButtonDown(ActionButton.B),
              ),
          ),
          Positioned(
              left: BUTTON_SIZE * 2,
              child: ConsoleButton(
                  size: BUTTON_SIZE,
                  color: Theme.of(ctx).primaryColorDark,
                  onTapUp: (_) => onActionButtonUp(ActionButton.A),
                  onTapDown: (_) => onActionButtonDown(ActionButton.A),
              ),
          ),
        ]),
    ));
  }
}

