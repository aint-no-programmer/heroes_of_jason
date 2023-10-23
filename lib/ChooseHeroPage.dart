import 'package:flutter/material.dart';
import 'ConcreteHero.dart';

List<StatelessWidget> getListOfHeroes() {
  return [
    ConcreteHero(icon: 'images/test_hero.png', width: 100, heroName: "Ильяс",),
    ConcreteHero(icon: 'images/test_hero_2.png', width: 100, heroName: "Святозавр",),
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
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: getListOfHeroes(),
      ),
    );
  }
}
