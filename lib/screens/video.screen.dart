import 'package:desafio/widgets/head.widget.dart';
import 'package:desafio/widgets/youtube.widget.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  int idVideo = 0;
  late YoutubePlayerController controller;

  /*@override
  void dispose() {
    controller.dispose(); 
    super.dispose();
  }
  */

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fondo4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            if (isPortrait)
              const Head(text: 'Videos', sizeline: 100)
            else
              const SizedBox(),
            const Expanded(
              child: YoutubeWidget(),
            )
          ],
        ),
      ),
    ));
  }
}
