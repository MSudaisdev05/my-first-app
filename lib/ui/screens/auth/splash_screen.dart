import 'dart:async';

import 'package:first_app/ui/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Image.asset(
            'assets/static_assets/applogo.png',
            width: 304,
            height: 77,
          ),
        ),
      ),
      backgroundColor: Colors.red,
    );
  }

  void loginscreen() {}
}
