import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:heroes_of_jason/DirectoryParser.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ConcreteHero.dart';

class CreatorsPage extends StatelessWidget {
  CreatorsPage({
    super.key,
  });

  final String _alessky_description =
      'стал работать писцом на пергаменте, и ему нравится. знает слово полиморфизм.';
  final List<String> _alessky_prophecy = [
    'ты чего маааленький !',
    'есть два аспекта'
  ];
  final String _alessky_creator_description = 'Alessky.\n'
      'Programmer.\n'
      '- game mechanics\n'
      '- programming\n'
      '- game scenario\n';

  final String _zinke_description =
      'юлия из рода юлиев. долгое время работала бартендером в тавернах по всей греции, но никогда не была в персии. потом перехала в афины и стала расписывать храмы апполона. вроде бы получается =)';
  final List<String> _zinke_prophecy = [
    '7 на 8',
    'Ой, как это мило!',
    'или ничего...',
    'это вам не фикушки воробья!',
    'они думали что мы взрослые =)'
  ];
  final String _zinke_creator_descrition = 'J.Zinkevich.\n'
      'Illustrator.\n'
      '- visual design\n'
      '- game intro\n'
      '- heroes images\n';
  final String _koshka_description =
      'это просто кошка. из редкой породы кошек. даже немного цирковая. была подобрана юлией из рода юлиев давно где то на пелепонесах. ';
  final List<String> _koshka_prophecy = ['мяук!', 'фррррр...'];
  final String _koshka_creator_descrition = 'koshka.\n'
      'cat.\n'
      '- eat\n'
      '- sleep\n'
      '- murr . . . \n';

  //build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Creators"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/creators_background.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'C R E A T O R S',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ConcreteHero(
                        icon: 'images/creators_alessky.jpg',
                        width: 200,
                        heroName: 'alessky',
                        description: _alessky_description,
                        prophecies: _alessky_prophecy,
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.loose(const Size.square(200)),
                        child: Text(
                          _alessky_creator_description,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ConcreteHero(
                        icon: 'images/creators_zinke.jpg',
                        width: 200,
                        heroName: 'J.Zinkevich',
                        description: _zinke_description,
                        prophecies: _zinke_prophecy,
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.loose(const Size.square(200)),
                        child: Text(
                          _zinke_creator_descrition,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ConcreteHero(
                        icon: 'images/creators_koshka.jpg',
                        width: 200,
                        heroName: 'koshka',
                        description: _koshka_description,
                        prophecies: _koshka_prophecy,
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.loose(const Size.square(200)),
                        child: Text(
                          _koshka_creator_descrition,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                  SizedBox(height: 50),
                  Text(
                    'U S E D  M U S I C',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  // SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  '1. soundtrack from an animated TV series "Jason and the Heroes of Mount Olympus"\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18)),
                          TextSpan(
                              text: 'Game intro music\n\n',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          TextSpan(
                              text: '2. Sleepy Fish - Velocities\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18)),
                          TextSpan(
                              text: 'Background music',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'C O N T A C T S',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  // SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'J. Zinkevich. Illustrator.\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18)),
                          TextSpan(
                              text: 'http://zinkevich-creation.tilda.ws/',
                              style: TextStyle(
                                  color: Colors.lightGreen,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.lightGreen,
                                  decorationThickness: 2,
                                  fontSize: 18),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launchUrl(Uri.parse(
                                      'http://zinkevich-creation.tilda.ws/'));
                                }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 200),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
