import 'package:flutter/material.dart';
import 'dart:io';
import 'package:just_audio/just_audio.dart';

class StartPage extends StatelessWidget {
  StartPage({
    super.key,
  });
  AudioPlayer? _player;
  void _addAudioPlayer(){
    if (_player?.playing ?? false) return;
    _player = AudioPlayer();
    _player?.setAsset('audio/background_audio.mp3');
    _player?.setLoopMode(LoopMode.one);
    _player?.setVolume(0.4);
    _player?.play();
  }
  @override
  Widget build(BuildContext context) {
    _addAudioPlayer();
    return Scaffold(
      body: PopScope(
        canPop: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/start_page.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(20),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Expanded(
                  //   child: Spacer(),
                  // ),
                  SizedBox(
                    height: 200,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                            color: Colors.white,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/ChooseHeroPage');
                    },
                    child: Text('п л э й'),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {},
                    child: Text('к р е а т о р с'),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () => exit(0),
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
      ),
    );
  }
}
