import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/welcome_widgets/w_image.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math_64.dart' as math;

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyConstant.wBackPrimary,
                    MyConstant.wBackSecondary,
                    MyConstant.wBackThird
                  ],
                ),
              ),
            ),
          ),
          // img
          const WImage(),
          // beans
          Positioned(
            left: -10,
            bottom: size.height * .06,
            width: size.width * .5,
            height: size.height * .25,
            child: Image.asset('assets/images/bean/beans2.png'),
          ),
          // title texts
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 10, top: 40, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'It\'s \nTime for \na Coffee!',
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: MyConstant.font3,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Each coffee bean reflects our commitment to Peruvian coffee producers.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white30,
                      letterSpacing: 4,
                      wordSpacing: 6,
                      fontFamily: MyConstant.font3,
                    ),
                  ),
                  const Spacer(),
                  // counts, button
                  Row(
                    children: [
                      ...List.generate(
                        3,
                        (i) => Container(
                          height: 8 + i * 5,
                          width: 8 + i * 5,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.primaries[i % Colors.primaries.length],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white10,
                            border: Border.all()),
                        child: const Text(
                          'Get Start >>',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      const SizedBox(width: 25),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
