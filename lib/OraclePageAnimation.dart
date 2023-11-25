import 'dart:math';

import 'package:flutter/material.dart';

class OraclePageAnimation extends StatefulWidget {
  OraclePageAnimation({super.key, required this.prophecies});
  final List<String> prophecies;
  @override
  State<OraclePageAnimation> createState() => OraclePageAnimationState();
}

class OraclePageAnimationState extends State<OraclePageAnimation> {
  String getRandomProphecy() {
    return widget.prophecies[Random().nextInt(widget.prophecies.length)];
  }

  String prophecy = 't a p';
  bool _visible = true;
  bool _longpress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Prophecy'),
      ),
      body: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/main_background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _visible = false;
              });
            },
            onLongPress: () {
              setState(() {
                _longpress = true;
              });
            },
            child: Center(
              child: AnimatedContainer(
                duration: Duration(seconds: 4),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  // border: Border.all(),
                  // borderRadius: BorderRadius.circular(10),
                  color: _visible? Colors.red : Colors.white,
                  shape: _visible? BoxShape.rectangle : BoxShape.circle,
                ),
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(100),
                child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 1000),
                  child: Text(prophecy),
                  onEnd: () {
                    setState(() {
                      if (!_visible) prophecy = getRandomProphecy();
                      _visible = true;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
