import 'package:bridgelabz_ejet_gain_app/data/dummy_data_layer.dart';
import 'package:bridgelabz_ejet_gain_app/widgets/instagram_photo_post_view.dart';
import 'package:bridgelabz_ejet_gain_app/widgets/short_story_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ShortVideos> shortVideosList = [];
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;

  @override
  void initState() {
    shortVideosList = shortsList;
    controller.addListener(() {
      setState(() {
        closeTopContainer = controller.offset > 150;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double storysHeight = size.height * 0.22;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EJET Gain',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            iconSize: 30,
            icon: const Icon(Icons.search),
          ),
          IconButton(
            color: Colors.black,
            onPressed: () {},
            iconSize: 30,
            icon: const Icon(Icons.add_alert_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: size.width,
                alignment: Alignment.topCenter,
                height: closeTopContainer ? 0 : storysHeight,
                child: ShortsVideosListView(shortslist: shortVideosList),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                controller: controller,
                itemBuilder: (context, index) {
                  return const InstagramPhotoPostView();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShortsVideosListView extends StatelessWidget {
  final List<ShortVideos> shortslist;
  const ShortsVideosListView({Key? key, required this.shortslist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: ListView.builder(
        itemCount: shortslist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final story = shortslist[index];
          return ShortStoryView(story: story);
        },
      ),
    );
  }
}
