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
            const SizedBox(height: 10),
            const Text(
              'Each coffee bean reflects our commitment to Peruvian coffee producers.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white54,
                letterSpacing: 2.5,
                wordSpacing: 5,
              ),
            ),
            const Spacer(),
            // counts, button
            const WCounterButton(),
            const SizedBox(height: 10),
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
