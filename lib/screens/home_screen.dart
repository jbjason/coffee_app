import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/home_widgets/h_body.dart';
import 'package:coffee_app/widgets/home_widgets/h_navbar.dart';
import 'package:coffee_app/widgets/painters/h_painters.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyConstant.wBackSecondary,
      body: Stack(
        children: [
          Positioned.fill(
            bottom: size.height * .06,
            child: ClipPath(
              clipper: HBodyClipper(),
              child: Container(color: MyConstant.hBackPrimary),
            ),
          ),
          // body
          const Padding(padding: EdgeInsets.all(20.0), child: HBody()),
          // navBar
          const Positioned(left: 0, right: 0, bottom: 0, child: HNavBar()),
        ],
      ),
    );
  }
}
