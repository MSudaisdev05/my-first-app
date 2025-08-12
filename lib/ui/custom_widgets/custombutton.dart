import 'package:first_app/core/constatns/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? text;
  CustomButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text ?? '',
          style: TextStyle(fontSize: 16, color: whiteColor),
        ),
      ),
    );
  }
}
