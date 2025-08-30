import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 300,
        flexibleSpace: Image.asset(
          "assets/static_assets/appbar.png",
          fit: BoxFit.fill,
        ),
      ),
      body: Container(color: Colors.cyanAccent, height: 300, width: 200),
    );
  }
}
