import 'dart:math';

import 'package:flutter/material.dart';

class OraclePage extends StatefulWidget {
  OraclePage({super.key, required this.prophecies});
  final List<String> prophecies;
  @override
  State<OraclePage> createState() => OraclePageState();
}

class OraclePageState extends State<OraclePage>
{
  String getRandomProphecy(){
    return widget.prophecies[Random().nextInt(widget.prophecies.length)];
  }
  String prophecy = 't a p';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Prophecy'),
      ),
      body: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              prophecy = getRandomProphecy();
            });
          },
          child: Center(
            child: Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(100),
              decoration: BoxDecoration(
                // border: Border.all(),
                // borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Text(prophecy),
            ),
          ),
        ),
      ),
    );
  }
}
