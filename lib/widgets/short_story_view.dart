import 'dart:ui';

import 'package:bridgelabz_ejet_gain_app/data/dummy_data_layer.dart';
import 'package:flutter/material.dart';

class ShortStoryView extends StatelessWidget {
  final ShortVideos story;

  const ShortStoryView({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.20;
    return Stack(
      children: [
        Container(
          height: height,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.only(left: 5, right: 5),
          width: 100,
          child: Image.network(
              story.contentThumnail ?? "https://picsum.photos/200",
              fit: BoxFit.fill),
        ),
        Positioned(
          left: 12,
          top: 8,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.white, width: 1, style: BorderStyle.solid),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    story.iconImageUrl ?? "https://picsum.photos/200"),
              ),
            ),
          ),
        ),
        Positioned(
          left: 5,
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: SizedBox(
              height: height * 0.22,
              width: 100,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0.2),
                      ],
                      stops: const [0.0, 1.0],
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Center(
                      child: Text(
                        "${story.title}",
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
