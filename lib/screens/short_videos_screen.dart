import 'package:flutter/material.dart';

class ShortVideosScreen extends StatefulWidget {
  const ShortVideosScreen({Key? key}) : super(key: key);

  @override
  State<ShortVideosScreen> createState() => _ShortVideosScreenState();
}

class _ShortVideosScreenState extends State<ShortVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ShortVideosScreen'),
    );
  }
}
