import 'dart:math';
import 'package:shake/shake.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class OraclePageAnimation extends StatefulWidget {
  OraclePageAnimation({super.key, required this.prophecies});
  final List<String> prophecies;
  @override
  State<OraclePageAnimation> createState() => OraclePageAnimationState();
}

class OraclePageAnimationState extends State<OraclePageAnimation> {
  ShakeDetector? _detector;
  Future<bool?> get hasVibrator async => await Vibration.hasVibrator();
  Future<bool?> get hasAmplitudeControl async => await Vibration.hasAmplitudeControl();
  OraclePageAnimationState(){
    _detector = ShakeDetector.autoStart(
      onPhoneShake: () async {
        if (await hasVibrator?? false) {
          if (await hasAmplitudeControl?? false) {
            Vibration.vibrate(amplitude: 128);
          }
          else{
            Vibration.vibrate();
          }
        }
        setState(() {
          _visible = false;
        });
      },
      minimumShakeCount: 2,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 1000,
      shakeThresholdGravity: 3.7,
    );
  }
  @override
  void dispose() {
    _detector?.stopListening();
    super.dispose();
  }
  String getRandomProphecy() {
    return widget.prophecies[Random().nextInt(widget.prophecies.length)];
  }

  String prophecy = 's h a k e  m e.';
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
              //now empty - move this logic to shaker
              // setState(() {
              //   _visible = false;
              // });
            },
            child: Center(
              child: AnimatedContainer(
                duration: Duration(seconds: 4),
                curve: Curves.fastOutSlowIn,
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
                      Vibration.cancel();
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
