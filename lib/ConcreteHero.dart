import 'package:flutter/material.dart';

class ConcreteHero extends StatelessWidget {
  const ConcreteHero({
    super.key,
    required this.icon,
    this.onTap,
    required this.width,
  });

  final String icon;
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
              //stoped here
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