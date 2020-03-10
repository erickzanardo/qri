import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

typedef OnTapDown = void Function(TapDownDetails details);
typedef OnTapUp = void Function(TapUpDetails details);

class ConsoleButton extends StatelessWidget {

  final OnTapUp onTapUp;
  final OnTapDown onTapDown;
  final Color color;

  final double size;

  ConsoleButton({
    @required this.color,
    @required this.onTapDown,
    @required this.onTapUp,
    @required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: size, height: size, child: GestureDetector(
        onTapUp: onTapUp,
        onTapDown: onTapDown,
        child: CustomPaint(painter: _ButtonPainter(color: color)),
    ));
  }
}

class _ButtonPainter extends CustomPainter {
  final Color color;

  _ButtonPainter({
    @required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    canvas.drawCircle(
        Offset(size.width / 2, size. height / 2),
        size.width / 2,
        paint
    );
  }

  @override
  bool shouldRepaint(_ButtonPainter oldDelegate) => color != oldDelegate.color;
}
