import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.movie_creation), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int value) {
            setState(() {
              selectedIndex = value;
            });
          }, items: bottomItems,
        ),
      ),
    );
  }
}
