import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:heroes_of_jason/OraclePage.dart';

class HeroPage extends StatelessWidget {
  HeroPage({super.key, required this.icon, required this.heroName});
  final String icon;
  final String heroName;
  @override
  Widget build(BuildContext context) {
    timeDilation = 3;
    return Scaffold(
      appBar: AppBar(
        title: Text("Concrete hero: $heroName"),
        centerTitle: true,
      ),
      body: Hero(
        tag: icon,
        child: Column(
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(30),
                // margin: const EdgeInsets.all(30),
                // color: Colors.amberAccent,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder<void>(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return AnimatedBuilder(
                              animation: animation,
                              builder: (context, child) {
                                return OraclePage(
                                    prophecies: ['some prophecy', 'another prophecy', 'you are so cute', 'please dont touch me']);
                              },
                            );
                          },
                        ),
                      );
                    },
                    child: Image(
                      image: AssetImage(icon),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Material(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    // margin: const EdgeInsets.all(30),
                    color: Colors.amber,
                    child: Text(
                      'This is a long piece of text that will be scrollable. Lorem ipsum dolor sit amet, consectetur adipiscing'
                      ' elitorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing '
                      'elitorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing '
                      'elitorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing '
                      'elitorem ipsum dolor sit amet, consectetur adipiscing elitorem ipsum dolor sit amet, consectetur adipiscing '
                      'elitorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et '
                      'dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea '
                      'commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla'
                      ' pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est'
                      ' laborum.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
