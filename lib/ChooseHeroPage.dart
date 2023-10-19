import 'package:flutter/material.dart';
import 'ConcreteHero.dart';

List<StatelessWidget> getListOfHeroes() {
  return [
    ConcreteHero(icon: 'images/test_hero.png', width: 100),
    ConcreteHero(icon: 'images/test_hero_2.png', width: 100),
  ];
}

class ChooseHeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: getListOfHeroes(),
    );
  }
}
