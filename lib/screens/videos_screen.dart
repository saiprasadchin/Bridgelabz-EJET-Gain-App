import 'package:bridgelabz_ejet_gain_app/widgets/youtube_video_view.dart';
import 'package:flutter/material.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Youtube',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return const YoutubeVideoView();
        },
      ),
    );
  }
}
