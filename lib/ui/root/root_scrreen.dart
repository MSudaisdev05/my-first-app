import 'package:first_app/ui/screens/auth/homescreen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;
  List<Widget> screen = [Homescreen(), Text("Serch"), Text("setting")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.blueGrey,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "serch"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Seitting",
          ),
        ],
      ),
    );
  }
}
