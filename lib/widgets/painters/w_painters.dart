// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:coffee_app/constants/constants.dart';
import 'package:flutter/material.dart';

class WCupPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final center = Offset(w / 2, h / 2);
    final rect = Rect.fromCenter(center: center, width: w * .85, height: h);
    const gradinet = SweepGradient(tileMode: TileMode.repeated, colors: [
      Colors.transparent,
      MyConstant.wBackThird,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
    ]);

    final paint = Paint()
      ..shader = gradinet.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 30;
    canvas.drawArc(rect, math.radians(0), math.radians(180), true, paint);
    canvas.drawShadow(Path(), MyConstant.wBackThird, 10, true);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
