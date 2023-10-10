import 'package:flutter/material.dart';
import 'ConcreteHero.dart';

class ChooseHeroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
          ConcreteHero(icon: 'images/test_hero.png', width: 100),
        ],
    );
  }
}