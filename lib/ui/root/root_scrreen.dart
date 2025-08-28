import 'package:first_app/core/constatns/colors.dart';
import 'package:first_app/core/constatns/strings.dart';
import 'package:first_app/core/constatns/text_style.dart';
import 'package:first_app/ui/screens/auth/Setting.dart';
import 'package:first_app/ui/screens/auth/homescreen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;
  onClick(value) {
    selectedIndex = value;
  }

  List<Widget> screen = [
    Homescreen(),
    Center(child: Text("Serch", style: style42B)),
    Setting(),
    Center(child: Text("dashbord", style: style42B)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.25),
              offset: Offset(0, 3),
              blurRadius: 4,
              spreadRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(0);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor:
                    selectedIndex == 0 ? primeryColor : Colors.transparent,
                child: Image.asset(
                  "$iconsAssets/botm2.png",
                  color: selectedIndex == 0 ? Colors.white : gryColor,
                  scale: 1,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(1);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor:
                    selectedIndex == 1 ? primeryColor : Colors.transparent,
                // child: Image.asset(
                //   "$iconsAssets/botm2.png",
                // color: selectedIndex == 1 ? Colors.white : gryColor,
                // scale: 3,
                child: Icon(
                  Icons.home,
                  color: selectedIndex == 1 ? whiteColor : gryColor,
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(2);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor:
                    selectedIndex == 2 ? primeryColor : Colors.transparent,
                child: Image.asset(
                  "$iconsAssets/botm2.png",
                  color: selectedIndex == 2 ? Colors.white : gryColor,
                  scale: 3,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(3);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor:
                    selectedIndex == 3 ? primeryColor : Colors.transparent,
                child: Image.asset(
                  "$iconsAssets/botm2.png",
                  color: selectedIndex == 3 ? Colors.white : gryColor,
                  scale: 3,
                ),
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: selectedIndex,
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.blueGrey,
      //   onTap: (value) {
      //     setState(() {
      //       selectedIndex = value;
      //     });
      //   },
      //   items: [
      //     // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

      //     // BottomNavigationBarItem(icon: Icon(Icons.search), label: "serch"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.dashboard_outlined),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
      //     BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
      //   ],
      // ),
    );
  }
}
