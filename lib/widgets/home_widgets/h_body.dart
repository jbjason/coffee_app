import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/home_widgets/h_category_list.dart';
import 'package:coffee_app/widgets/home_widgets/h_product_list.dart';
import 'package:flutter/material.dart';

class HBody extends StatelessWidget {
  const HBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/icons/menu.png', height: 45),
                const SizedBox(width: 15),
                const CircleAvatar(
                  radius: 26,
                  backgroundColor: MyConstant.hBodyBack,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('assets/images/2.jpg'),
                  ),
                ),
                const Spacer(),
                Image.asset('assets/icons/search.png', height: 45),
              ],
            ),
            const SizedBox(height: 20),
            // hi jubayer text
            RichText(
              text: const TextSpan(
                text: 'Hi, ',
                style: TextStyle(fontSize: 24, color: MyConstant.wBackThird),
                children: [
                  TextSpan(
                    text: 'Jubayer',
                    style: TextStyle(
                      fontSize: 24,
                      color: MyConstant.wBackThird,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // categories
            const HCategoryList(),
            // product list
            const Expanded(child: HProductList()),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
