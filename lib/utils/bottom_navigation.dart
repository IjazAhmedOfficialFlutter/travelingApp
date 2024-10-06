import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarApp extends StatelessWidget {
  const BottomNavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        index: 2,
        backgroundColor: Colors.transparent,
        items: const [
          Icon(Icons.person_2_outlined, size: 30),
          Icon(Icons.favorite_border, size: 30),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.red,
          ),
          Icon(Icons.business, size: 30),
          Icon(Icons.menu_open, size: 30),
        ]);
  }
}
