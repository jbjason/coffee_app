import 'package:coffee_app/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyConstant.wBackSecondary,
      body: Stack(
        children: [
          Positioned.fill(
            bottom: kBottomNavigationBarHeight + 15,
            child: ClipPath(
                clipper: HBodyClipper(),
                child: Container(color: MyConstant.hBackPrimary)),
          ),
          const Padding(padding: EdgeInsets.all(20.0), child: HBody()),
        ],
      ),
    );
  }
}

class HBodyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final w = size.width, h = size.height;
    final path = Path();

    path.lineTo(0, h - 30);
    path.quadraticBezierTo(w * .2, h, w * .4, h);
    path.cubicTo(w * .4, h * .9, w * .6, h * .9, w * .6, h);
    path.quadraticBezierTo(w * .75, h, w, h - 30);

    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class HBody extends StatelessWidget {
  const HBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/icons/menu.png'),
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
              Image.asset('assets/icons/search.png'),
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
          const HCategoryList(),
          // const Expanded(child: SizedBox())
        ],
      ),
    );
  }
}

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

class HCategoryPainter extends CustomPainter {
  final bool selectedIndex;

  const HCategoryPainter({required this.selectedIndex});
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    final center = Offset((w / 2) - 4, h - 4);
    final color = selectedIndex ? MyConstant.wSplash : Colors.transparent;
    final paint = Paint()..color = color;

    path.moveTo(w / 2 - 4, h - 4);
    path.addArc(Rect.fromCenter(center: center, width: 8, height: 8), 0, 360);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
