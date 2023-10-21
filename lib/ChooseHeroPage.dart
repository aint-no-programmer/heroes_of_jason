import 'package:flutter/material.dart';
import 'ConcreteHero.dart';

List<StatelessWidget> getListOfHeroes() {
  return [
    ConcreteHero(icon: 'images/test_hero.png', width: 100, heroName: "Rib",),
    ConcreteHero(icon: 'images/test_hero_2.png', width: 100, heroName: "ПВВ",),
  ];
}

class ChooseHeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Choose your her0"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: getListOfHeroes(),
      ),
    );
  }
}
