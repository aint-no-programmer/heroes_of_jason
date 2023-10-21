import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'HeroPage.dart';

class ConcreteHero extends StatelessWidget {
  const ConcreteHero(
      {super.key,
      required this.icon,
      this.onTap,
      required this.width,
      required this.heroName});

  final String icon;
  final String heroName;
  final VoidCallback? onTap;
  final double width;

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
            child: Image.asset(
              icon,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}