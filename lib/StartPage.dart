import 'package:flutter/material.dart';
import 'dart:io';

class StartPage extends StatelessWidget {
  const StartPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/start_page.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.all(20),
            child: Column(
              // crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Expanded(
                //   child: Spacer(),
                // ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(const Color.fromARGB(255, 27, 65, 90)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/ChooseHeroPage');
                  },
                  child: Text('п л э й'),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(const Color.fromARGB(255, 27, 65, 90)),
                  ),
                  onPressed: () {},
                  child: Text('к р е а т о р с'),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(const Color.fromARGB(255, 27, 65, 90)),
                  ),
                  onPressed: ()=> exit(0),
                  child: Text('а у т'),
                ),
                // Expanded(
                //   child: Spacer(),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
