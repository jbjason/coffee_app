import 'package:flutter/material.dart';
import 'package:coffee_app/constants/constants.dart';

class HBodyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    path.lineTo(0, h - 30);
    path.quadraticBezierTo(w * .2, h, w * .37, h);
    path.cubicTo(w * .37, h * .915, w * .615, h * .915, w * .63, h);
    path.quadraticBezierTo(w * .75, h, w, h - 30);
    path.lineTo(w, 0);
    path.close();

    final paint = Paint()..color = MyConstant.hBackPrimary;
    canvas.drawPath(path, paint);
    //canvas.drawShadow(path, MyConstant.wBackThird, 10, true);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class HCategoryPainter extends CustomPainter {
  final bool selectedIndex;
  const HCategoryPainter({required this.selectedIndex});
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    final center = Offset((w / 2) - 4, h - 4);
    final color = selectedIndex ? MyConstant.wSplash : Colors.transparent;
    final paint = Paint()..color = color;
    path.moveTo(w / 2 - 4, h - 4);
    path.addArc(Rect.fromCenter(center: center, width: 8, height: 8), 0, 360);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class HNavPainter extends CustomPainter {
  final bool isSelected;
  HNavPainter({required this.isSelected});
  @override
  void paint(Canvas canvas, Size size) {
    if (!isSelected) return;
    final h = size.height, w = size.width;
    final center = Offset((w / 2), (h * .75) - 3);
    final paint = Paint()..color = MyConstant.wSplash;
    canvas.drawCircle(center, 4, paint);
    final paint2 = Paint()..color = MyConstant.hBackPrimary;
    final path = Path();
    path.moveTo(w * .375, h - 1);
    path.quadraticBezierTo(w * .5, h * .7, w * .625, h - 1);
    path.lineTo(w * .375, h - 1);
    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
