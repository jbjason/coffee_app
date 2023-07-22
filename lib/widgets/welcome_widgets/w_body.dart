import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/welcome_widgets/w_counter_button.dart';
import 'package:flutter/material.dart';

class WBody extends StatelessWidget {
  const WBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 10, top: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getTitleText('It\'s'),
            _getTitleText('Time for'),
            _getTitleText('Coffee!'),
            const SizedBox(height: 15),
            const Text(
              'Each coffee bean reflects our commitment to Peruvian coffee producers.',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white54,
                letterSpacing: 4,
                wordSpacing: 6,
              ),
            ),
            const Spacer(),
            // counts, button
            const WCounterButton(),
          ],
        ),
      ),
    );
  }

  Text _getTitleText(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 45,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: MyConstant.font3,
        ),
      );
}
