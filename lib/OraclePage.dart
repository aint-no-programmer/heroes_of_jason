import 'package:flutter/material.dart';

class OraclePage extends StatelessWidget {
  // OraclePage({this.prophecy});
  String prophecy = "";
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
            // Navigator.of(context).push(
            //   PageRouteBuilder<void>(
            //     pageBuilder: (context, animation, secondaryAnimation) {
            //       return AnimatedBuilder(
            //         animation: animation,
            //         builder: (context, child) {
            //           return OraclePage();
            //         },
            //       );
            //     },
            //   ),
            // );
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
      // body: Center(
      //   child: Card(
      //     color: Colors.white,
      //     child: Text(
      //       'word',
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         fontWeight: FontWeight.normal,
      //         fontSize: 20.0,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
