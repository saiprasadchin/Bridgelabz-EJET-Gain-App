import 'package:bridgelabz_ejet_gain_app/screens/home_screen.dart';
import 'package:bridgelabz_ejet_gain_app/screens/profile_screen.dart';
import 'package:bridgelabz_ejet_gain_app/screens/short_videos_screen.dart';
import 'package:bridgelabz_ejet_gain_app/screens/videos_screen.dart';
import 'package:bridgelabz_ejet_gain_app/screens/workshops_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainTabBarController(),
    );
  }
}

class MainTabBarController extends StatefulWidget {
  const MainTabBarController({Key? key}) : super(key: key);

  @override
  State<MainTabBarController> createState() => _MainTabBarControllerState();
}

class _MainTabBarControllerState extends State<MainTabBarController> {
  int _selectedIndex = 0;

  final screens = const [
    HomeScreen(),
    VideosScreen(),
    ShortVideosScreen(),
    WorkshopsScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: HexColor("#e24e59"),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cameraswitch_rounded),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_sharp),
            label: 'Workshop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
