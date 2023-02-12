import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar/favorite_page.dart';
import 'bottom_nav_bar/home_page.dart';
import 'bottom_nav_bar/search_page.dart';
import 'bottom_nav_bar/setting_page.dart';
import 'bottom_nav_bar/share_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var pageController = 0;

  final pages = const [
    HomePage(),
    FavoritePage(),
    SearchPage(),
    SettingPage(),
    SharePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            color: Colors.white,
            backgroundColor: Colors.black,
            buttonBackgroundColor: Colors.red,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 500),
            onTap: (index) {
              setState(() {
                pageController = index;
              });
            },
            items: const [
              Icon(Icons.home),
              Icon(Icons.favorite_border),
              Icon(Icons.search),
              Icon(Icons.settings),
              Icon(Icons.share),
            ]),
        body: pages[pageController],
      ),
    );
  }
}
