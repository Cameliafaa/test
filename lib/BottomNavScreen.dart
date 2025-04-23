import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:projectmp_231011701090/HomeScreen.dart';
import 'package:projectmp_231011701090/ListViewScreen.dart';
import 'package:projectmp_231011701090/ProfileSreen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ProfileScreen(),
    ListViewScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomBarDefault(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.person, title: 'Profile'),
          TabItem(icon: Icons.list, title: 'List'),
        ],
        backgroundColor: Colors.white,
        colorSelected: Colors.pink,
        color: Colors.grey,
        indexSelected: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
