import 'package:flutter/material.dart';
import 'package:heroes_of_jason/DirectoryParser.dart';
import 'ConcreteHero.dart';

class CreatorsPage extends StatelessWidget {
  CreatorsPage({
    super.key,
  });
  //build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Creators"),
      ),
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/creators_background.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('C R E A T O R S'),
                Container(
                  child: ConcreteHero(
                    icon: 'images/creators_alessky.jpg',
                    width: 150,
                    heroName: 'alessky',
                    description: 'description',
                    prophecies: ['1', '2'],
                  ),
                  height: 150,
                ),
                Container(
                  child: ConcreteHero(
                    icon: 'images/creators_zinke.jpg',
                    width: 150,
                    heroName: 'J.Zinkevich',
                    description: 'description',
                    prophecies: ['1', '2'],
                  ),
                  height: 50,
                ),
                // ConcreteHero(
                //   icon: 'images/creators_zinke.jpg',
                //   width: 100,
                //   heroName: 'J.Zinkevich',
                //   description: 'description_2',
                //   prophecies: ['1', '2'],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
