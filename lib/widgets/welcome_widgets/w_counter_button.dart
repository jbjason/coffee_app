import 'package:coffee_app/constants/constants.dart';
import 'package:flutter/material.dart';

class WCounterButton extends StatelessWidget {
  const WCounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      MyConstant.hBodyBack.withOpacity(.1),
      MyConstant.hBodyBack.withOpacity(.3),
      MyConstant.hBodyBack.withOpacity(.6),
      MyConstant.hBodyBack,
    ];
    return Row(
      children: [
        ...List.generate(
          4,
          (i) => Container(
            height: 8 + i * 3,
            width: 8 + i * 3,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors[i],
            ),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
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
    );
  }
}
