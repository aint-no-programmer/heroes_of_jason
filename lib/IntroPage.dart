import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'StartPage.dart';

/// Stateful widget to fetch and then display video content.
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('video/jason_intro.mp4')
      ..setVolume(1.0)
      ..addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          _isPlaying = isPlaying;
          if (!_isPlaying) {
            Navigator.pushNamed(context, '/StartPage');
          }
        }
      })
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play().then((value) {
            _isPlaying = true;
          });
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            _controller.pause().then((value) => Navigator.pushNamed(context, '/StartPage'));
          },
          child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
        )
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
