import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/welcome_widgets/w_body.dart';
import 'package:coffee_app/widgets/welcome_widgets/w_image.dart';
import 'package:flutter/material.dart';

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
                    MyConstant.wSplash,
                    MyConstant.wBackSecondary,
                    MyConstant.wBackThird,
                    MyConstant.wBackThird,
                    MyConstant.wBackThird,
                  ],
                ),
              ),
            ),
          ),
          // img
          const WImage(),
          // beans
          Positioned(
            left: -5,
            bottom: size.height * .055,
            width: size.width * .7,
            height: size.height * .3,
            child: Image.asset('assets/images/bean/beans2.png'),
          ),
          // title texts
          const WBody(),
        ],
      ),
    );
  }
}
