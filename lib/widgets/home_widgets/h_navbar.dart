import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/painters/h_painters.dart';
import 'package:flutter/material.dart';

class HNavBar extends StatelessWidget {
  const HNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * .066;
    final width = MediaQuery.of(context).size.width / 3;
    return SizedBox(
      height: height,
      child: Row(
        children: [
          _getNavItem('assets/icons/home.png', height, width),
          _getCartIcon(width),
          _getNavItem('assets/icons/favorite.png', height, width),
        ],
      ),
    );
  }

  Widget _getNavItem(String img, double height, double width) {
    return SizedBox(
      width: width,
      child: CustomPaint(
        foregroundPainter:
            HNavPainter(isSelected: img.contains('home') ? true : false),
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset(img,
              height: height * .6, color: MyConstant.hBodyBack),
        ),
      ),
    );
  }

  Widget _getCartIcon(double width) {
    return SizedBox(
      width: width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -(width * .32),
            height: 100,
            left: width * .25,
            right: width * .25,
            // left: (width * .3),
            // height: width * .4,
            // width: width * .4,
            child: Container(
              padding: const EdgeInsets.all(1.2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: SweepGradient(
                  colors: [
                    MyConstant.hBodyBack.withOpacity(.1),
                    MyConstant.wBackThird,
                    MyConstant.wBackThird,
                    MyConstant.wBackThird,
                    MyConstant.wBackSecondary,
                    MyConstant.hBodyBack.withOpacity(.1),
                    MyConstant.hBodyBack.withOpacity(.1),
                  ],
                ),
                boxShadow: MyConstant.boxShadow,
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyConstant.wBackThird,
                ),
                child: Image.asset('assets/icons/cart.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
