import 'package:coffee_app/constants/constants.dart';
import 'package:flutter/material.dart';

class HProductList extends StatelessWidget {
  const HProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final coffeBeans = MyConstant().coffeeBeans;
    return Container(
      margin:
          EdgeInsets.only(top: size.height * .03, bottom: size.height * .13),
      child: PageView.builder(
        controller: PageController(viewportFraction: .7),
        padEnds: false,
        clipBehavior: Clip.none,
        itemCount: coffeBeans.length,
        itemBuilder: (context, i) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                top: size.height * .1,
                right: 25,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: MyConstant.hBodyBack,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: MyConstant.wBackPrimary.withOpacity(.3),
                        offset: const Offset(-5, -2),
                      ),
                      const BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 20,
                        color: MyConstant.hBodyBack,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // title
                      Text(
                        coffeBeans[i].title,
                        style: const TextStyle(
                          fontSize: 17,
                          color: MyConstant.wBackThird,
                        ),
                      ),
                      const SizedBox(height: 5),
                      // subtitle
                      Text(
                        coffeBeans[i].subtitle,
                        style: const TextStyle(
                          fontSize: 11,
                          color: MyConstant.wBackPrimary,
                          letterSpacing: 1.3,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // price & favorite-icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ ${coffeBeans[i].price}',
                            style: const TextStyle(
                              fontSize: 20,
                              color: MyConstant.wBackThird,
                            ),
                          ),
                          Image.asset('assets/icons/favorite.png',
                              color: MyConstant.wBackSecondary, height: 33),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -25,
                left: (size.width * .3) - 15,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyConstant.wBackThird,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: MyConstant.wBackPrimary.withOpacity(.6),
                        offset: const Offset(2, 2),
                      ),
                      const BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 20,
                        color: MyConstant.hBodyBack,
                        offset: Offset(-2, -2),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.add, color: MyConstant.hBackPrimary),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Image.asset(coffeBeans[i].img),
              ),
            ],
          );
        },
      ),
    );
  }
}
