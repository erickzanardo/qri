import 'package:flutter/material.dart';

import './console_button.dart';

enum DirectionButton {
  UP, DOWN, LEFT, RIGHT
}

typedef OnDirectionButtonUp = Function(DirectionButton);
typedef OnDirectionButtonDown = Function(DirectionButton);

class DirectionPad extends StatelessWidget {
  final OnDirectionButtonDown onDirectionButtonDown;
  final OnDirectionButtonUp onDirectionButtonUp;

  static const double BUTTON_SIZE = 50;

  DirectionPad({
    @required this.onDirectionButtonUp,
    @required this.onDirectionButtonDown,
  });

  Widget build(BuildContext ctx) {
    return Center(child: Container(
        width: BUTTON_SIZE * 3,
        height: BUTTON_SIZE * 3,
        child: Stack(children: [
          Positioned(
              left: BUTTON_SIZE,
              child: ConsoleButton(
                  size: BUTTON_SIZE,
                  color: Theme.of(ctx).primaryColor,
                  onTapUp: (_) => onDirectionButtonUp(DirectionButton.UP),
                  onTapDown: (_) => onDirectionButtonDown(DirectionButton.UP),
              ),
          ),
          Positioned(
              top: BUTTON_SIZE,
              child: ConsoleButton(
                  size: BUTTON_SIZE,
                  color: Theme.of(ctx).primaryColor,
                  onTapUp: (_) => onDirectionButtonUp(DirectionButton.LEFT),
                  onTapDown: (_) => onDirectionButtonDown(DirectionButton.LEFT),
              ),
          ),
          Positioned(
              top: BUTTON_SIZE,
              left: BUTTON_SIZE * 2,
              child: ConsoleButton(
                  size: BUTTON_SIZE,
                  color: Theme.of(ctx).primaryColor,
                  onTapUp: (_) => onDirectionButtonUp(DirectionButton.RIGHT),
                  onTapDown: (_) => onDirectionButtonDown(DirectionButton.RIGHT),
              ),
          ),
          Positioned(
              top: BUTTON_SIZE * 2,
              left: BUTTON_SIZE,
              child: ConsoleButton(
                  size: BUTTON_SIZE,
                  color: Theme.of(ctx).primaryColor,
                  onTapUp: (_) => onDirectionButtonUp(DirectionButton.DOWN),
                  onTapDown: (_) => onDirectionButtonDown(DirectionButton.DOWN),
              ),
          ),
        ]),
    ));
  }
}

