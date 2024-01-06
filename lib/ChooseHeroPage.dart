import 'package:flutter/material.dart';
import 'package:heroes_of_jason/DirectoryParser.dart';
import 'ConcreteHero.dart';

class ChooseHeroPage extends StatelessWidget {
  //get hero list
  List<StatelessWidget> getListOfHeroes() {
    List<StatelessWidget> output = [];
    for (var hero in _heroes) {
      output.add(ConcreteHero(
        icon: hero.icon,
        width: 100,
        heroName: hero.name,
        description: hero.description,
        prophecies: hero.prophecies,
      ));
    }
    return output;
  }
  
  //list of heroes
  final List<HeroDescription> _heroes;
  
  //ctor
  const ChooseHeroPage(this._heroes, {super.key});
  
  //build method
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
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          // mainAxisSpacing: 30,
          crossAxisSpacing: 10,
          children: getListOfHeroes(),
        ),
      ),
    );
  }
}
