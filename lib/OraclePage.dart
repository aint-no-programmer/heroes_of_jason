import 'dart:math';

import 'package:flutter/material.dart';

class OraclePage extends StatefulWidget {
  OraclePage({super.key, required this.prophecies});
  final List<String> prophecies;
  @override
  State<OraclePage> createState() => OraclePageState();
}

class OraclePageState extends State<OraclePage> {
  String getRandomProphecy() {
    return widget.prophecies[Random().nextInt(widget.prophecies.length)];
  }

  String prophecy = 't a p';
  bool _visible = true;
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
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  // border: Border.all(),
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  shape: BoxShape.circle,
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
