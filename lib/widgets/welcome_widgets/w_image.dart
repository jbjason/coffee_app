import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as math;

class WImage extends StatelessWidget {
  const WImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      left: 0,
      right: 0,
      bottom: size.height * .12,
      child: Transform.rotate(
        angle: math.radians(22),
        child: Image.asset('assets/images/cover/cover2.png'),
      ),
    );
  }
}
