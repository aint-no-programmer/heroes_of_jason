import 'package:flutter/material.dart';
import 'HeroPage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ConcreteHero extends StatelessWidget {
  ConcreteHero(
      {super.key,
      required this.icon,
      this.onTap,
      required this.width,
      required this.heroName,
      required this.description,
      required this.prophecies});

  final String icon;
  final String heroName;
  final String description;
  final List<String> prophecies;
  final VoidCallback? onTap;
  final double width;

  final colorizeColors = [
    Colors.white,
    Color.fromRGBO(255, 255, 255, 0.8),
    Color.fromRGBO(255, 255, 255, 0.6),
    Color.fromRGBO(255, 255, 255, 0.4),
    Color.fromRGBO(255, 255, 255, 0.2),
    Color.fromRGBO(255, 255, 255, 0.0),
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
                          description: description,
                          prophecies: prophecies
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 2 ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(icon),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(6, 6), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  // ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    // width: 250.0,
                    child: Container(
                      // color: Colors.white,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            heroName,
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                            speed: const Duration(milliseconds: 400),
                          ),
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                      ),
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
