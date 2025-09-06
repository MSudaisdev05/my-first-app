import 'package:first_app/core/constatns/colors.dart';
import 'package:first_app/core/constatns/text_style.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primeryColor,
          flexibleSpace: SafeArea(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              clipBehavior: Clip.none,
              children: [Text("hashdlhl"), Text("khan")],
            ),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: (Container(
              color: Colors.cyanAccent,
              height: 180,
              width: 378,
              child: Row(),
            )),
          ),
        ],
      ),
    );
  }
}
