import 'package:flutter/material.dart';

class MyConstant {
  static const font1 = 'Casab';
  static const font2 = 'Script';
  static const font3 = 'Vinque';

  static const wBackPrimary = Color(0xFF9D4304);
  static const wBackSecondary = Color(0xFF703307);
  static const wBackThird = Color(0xFF502407);
  static const wButtonBack = Color(0xFF612F0A);

  static const wSplash = Color(0xFFCF7124);

  static const hBackPrimary = Color(0xFFFAE6CD);
  static const hBodyBack = Color(0xFFFAF2E7);

  static const boxShadow = [
    BoxShadow(
      color: MyConstant.wSplash,
      blurRadius: 50,
      spreadRadius: 5,
      offset: Offset(-10, -25),
    ),
    BoxShadow(
      color: Colors.black54,
      blurRadius: 25,
      spreadRadius: 3,
      offset: Offset(10, 20),
    ),
  ];

  static const categoryShadow = [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 10,
      offset: Offset(2, 2),
    ),
    BoxShadow(
      color: MyConstant.hBodyBack,
      blurRadius: 15,
      spreadRadius: 4,
      offset: Offset(-5, -5),
    ),
  ];

  static const categories = ["All", "Coffee", "New Products", "Upcoming"];
}
