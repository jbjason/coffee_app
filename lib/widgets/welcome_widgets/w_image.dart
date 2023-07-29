import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/painters/w_painters.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as math;

class WImage extends StatelessWidget {
  const WImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // back shadow
        Positioned(
          left: 10,
          right: 10,
          bottom: size.height * .05,
          height: size.height * .6,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: MyConstant.wSplash.withOpacity(0.85),
                  blurRadius: 90,
                  spreadRadius: 5,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: size.width * .05,
          right: size.width * .03,
          bottom: size.height * .16,
          height: size.height * .3,
          child: Transform(
            transform: Matrix4.identity()..rotateX(math.radians(36)),
            child: CustomPaint(painter: WCupPainter()),
          ),
        ),
        // img
        Positioned(
          left: 0,
          right: size.width * .03,
          bottom: size.height * .155,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity() //..rotateX(math.radians(17)),
              ..rotateZ(math.radians(20)),
            // ..rotateX(math.radians(-20)),
            child: Image.asset('assets/images/cover/cover2.png'),
          ),
        ),
      ],
    );
  }
}

class WCupShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawShadow(Path(), MyConstant.wBackThird, 10, true);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
