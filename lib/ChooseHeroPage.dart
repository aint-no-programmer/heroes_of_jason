import 'package:flutter/material.dart';
import 'ConcreteHero.dart';

List<StatelessWidget> getListOfHeroes() {
  return [
    ConcreteHero(
      icon: 'images/hero_1.png',
      width: 100,
      heroName: "Ильяс",
    ),
    ConcreteHero(
      icon: 'images/hero_2.png',
      width: 100,
      heroName: "Святозавр",
    ),
    ConcreteHero(
      icon: 'images/hero_3.png',
      width: 100,
      heroName: "Макс",
    ),
    ConcreteHero(
      icon: 'images/hero_4.png',
      width: 100,
      heroName: "Леонид",
    ),
    ConcreteHero(
      icon: 'images/hero_5.png',
      width: 100,
      heroName: "Шэгги",
    ),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/main_background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: getListOfHeroes(),
        ),
      ),
    );
  }
}
