import 'package:flutter/material.dart';
import 'Profile.dart';
import 'home.dart'; // Pastikan file ini ada dan benar

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  // Pastikan ada dua widget di daftar ini: MyHome dan Profile
  static const List<Widget> widgetOptions = <Widget>[
    MyHome(), // Widget untuk Home
    Profile(), // Widget untuk Profile
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onTapped,
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex), // Ini aman sekarang
      ),
    );
  }
}
