import 'package:flutter/material.dart';
import 'HeroPage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ConcreteHero extends StatelessWidget {
  ConcreteHero(
      {super.key,
      required this.icon,
      this.onTap,
      required this.width,
      required this.heroName});

  final String icon;
  final String heroName;
  final VoidCallback? onTap;
  final double width;

  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  final colorizeTextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    // fontFamily: 'Greece',
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: icon,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder<void>(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return AnimatedBuilder(
                      animation: animation,
                      builder: (context, child) {
                        return HeroPage(
                          icon: icon,
                          heroName: heroName,
                        );
                      },
                    );
                  },
                ),
              );
            },
            child: Column(
              children: [
                Flexible(
                  // child: ClipOval(
                    // child: SizedBox.fromSize(
                    // size: Size.fromRadius(48), // Image radius
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(icon),
                        ),
                      ),
                    ),
                  // ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    // width: 250.0,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText(
                          heroName,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                        ColorizeAnimatedText(
                          'Кадыровец',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                        ColorizeAnimatedText(
                          'Росомаха',
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                      ],
                      isRepeatingAnimation: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
