import 'package:first_app/core/constatns/text_style.dart';
import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey,
        title: Text("Discount Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 180,
              width: 378,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffDE6060), Color(0xffB10E0E)],
                ),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(width: 0.8, color: Colors.black26),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All the restaurants ",
                          style: style16.copyWith(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Discount ",
                          style: style18B.copyWith(color: Color(0xffFFFFFF)),
                        ),
                        Text(
                          "Offers ",
                          style: style42B.copyWith(color: Color(0xffFFFFFF)),
                        ),
                      ],
                      
                    ),
                    
                  
                  ),
                
                ],
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
