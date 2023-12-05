import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:heroes_of_jason/OraclePageAnimation.dart';

class HeroPage extends StatelessWidget {
  HeroPage({super.key, required this.icon, required this.heroName, required this.description, required this.prophecies});
  final String icon;
  final String heroName;
  final String description;
  final List<String> prophecies;
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
                                return OraclePageAnimation(
                                    prophecies: prophecies);
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
                      description,
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
