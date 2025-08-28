import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(color: Colors.greenAccent),

          child: Text(
            "This is seitting page ",
            style: TextStyle(color: Colors.red, fontSize: 42),
          ),
        ),
      ),
    );
  }
}
