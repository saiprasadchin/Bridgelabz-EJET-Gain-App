import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramPhotoPostView extends StatelessWidget {
  const InstagramPhotoPostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
      height: 420,
      color: Colors.white30,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://picsum.photos/200"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "#coadermacha",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                )
              ],
            ),
          ),
          Expanded(
            child: Image.network(
              "https://picsum.photos/200",
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.heart),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.bookmark),
              )
            ],
          )
        ],
      ),
    );
  }
}
