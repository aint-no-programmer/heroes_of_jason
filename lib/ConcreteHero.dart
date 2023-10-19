import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class HeroPage extends StatelessWidget {
  HeroPage({super.key, required this.icon, required this.hero_name});
  final String icon;
  final String hero_name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Concrete hero: $hero_name"),
        centerTitle: true,
      ),
      body: Hero(
        tag: icon,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              // margin: const EdgeInsets.all(30),
              // color: Colors.amberAccent,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Image(
                    image: AssetImage(icon),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
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
          ],
        ),
      ),
    );
  }
}

class ConcreteHero extends StatelessWidget {
  const ConcreteHero(
      {super.key,
      required this.icon,
      this.onTap,
      required this.width,
      required this.hero_name});

  final String icon;
  final hero_name;
  final VoidCallback? onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: icon,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              //stoped here
              Navigator.of(context).push(
                PageRouteBuilder<void>(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return AnimatedBuilder(
                      animation: animation,
                      builder: (context, child) {
                        return HeroPage(
                          icon: icon,
                          hero_name: hero_name,
                        );
                      },
                    );
                  },
                ),
              );
            },
            child: Image.asset(
              icon,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
