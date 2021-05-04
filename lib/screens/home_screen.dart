import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Glogg App",
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: (Icon(Icons.home)), title: Text("Home")),
          BottomNavigationBarItem(
              icon: (Icon(Icons.search)), title: Text("Search")),
          BottomNavigationBarItem(
              icon: (Icon(Icons.add_circle_outline)), title: Text("Add")),
          BottomNavigationBarItem(
              icon: (Icon(Icons.list_outlined)), title: Text("List")),
          BottomNavigationBarItem(
              icon: (Icon(Icons.emoji_emotions_outlined)),
              title: Text("Profile")),
        ],
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
