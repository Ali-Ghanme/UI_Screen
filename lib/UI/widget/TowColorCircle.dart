import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';

class TwoColorCirclePainter extends CustomPainter {
  final Color color1;
  final Color color2;

  TwoColorCirclePainter({
    required this.color1,
    required this.color2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color1
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    var paint2 = Paint()
      ..color = color2
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      -math.pi / 1.5,
      math.pi / 1.4,
      false,
      paint1,
    );

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      math.pi / 21,
      math.pi / 0.77,
      false,
      paint2,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
