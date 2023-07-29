import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/painters/h_painters.dart';
import 'package:flutter/material.dart';

class HCategoryList extends StatefulWidget {
  const HCategoryList({super.key});
  @override
  State<HCategoryList> createState() => _HCategoryListState();
}

class _HCategoryListState extends State<HCategoryList> {
  int selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: ListView.builder(
              itemCount: MyConstant.categories.length,
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemBuilder: (context, i) {
                final isSelcted = selectedItem == i;
                return InkWell(
                  onTap: () => setState(() => selectedItem = i),
                  child: CustomPaint(
                    foregroundPainter:
                        HCategoryPainter(selectedIndex: selectedItem == i),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(right: 10, bottom: 17),
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: isSelcted
                                  ? MyConstant.hBodyBack
                                  : Colors.transparent,
                              boxShadow:
                                  isSelcted ? MyConstant.categoryShadow : [],
                            ),
                            child: Center(
                              child: Text(
                                MyConstant.categories[i],
                                style: TextStyle(
                                  fontSize: 13,
                                  letterSpacing: 1.3,
                                  fontWeight: isSelcted
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 20, bottom: 17),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: MyConstant.hBodyBack,
          ),
          child: Image.asset('assets/icons/settings.png'),
        ),
      ],
    );
  }
}
