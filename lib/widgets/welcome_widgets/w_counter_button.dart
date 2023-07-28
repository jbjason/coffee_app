import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WCounterButton extends StatelessWidget {
  const WCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      MyConstant.hBodyBack.withOpacity(.1),
      MyConstant.hBodyBack.withOpacity(.3),
      MyConstant.hBodyBack.withOpacity(.5),
      MyConstant.hBodyBack.withOpacity(.7),
    ];
    return Row(
      children: [
        // counter
        ...List.generate(
          4,
          (i) => Container(
            height: 8 + i * 3,
            width: 8 + i * 3,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors[i],
              boxShadow: MyConstant.boxShadow,
            ),
          ),
        ),
        const Spacer(),
        // start button
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          },
          child: Container(
            height: 60,
            width: 150,
            padding: const EdgeInsets.all(1.2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: SweepGradient(
                colors: [
                  MyConstant.hBodyBack.withOpacity(.1),
                  MyConstant.wBackThird,
                  MyConstant.wBackThird,
                  MyConstant.wBackThird,
                  MyConstant.wBackSecondary,
                  MyConstant.wBackThird,
                  MyConstant.wBackSecondary,
                ],
              ),
              boxShadow: MyConstant.boxShadow,
            ),
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: MyConstant.wBackThird,
              ),
              child: const Center(
                child: Text(
                  'Get Start >>',
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 25),
      ],
    );
  }
}
