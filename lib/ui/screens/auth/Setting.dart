// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://cdn-ilaennf.nitrocdn.com/AeyGUqzhKUCKzwDOStiQryRuTACtHDFY/assets/images/optimized/rev-27568ee/gmtwatches.ae/wp-content/uploads/2024/10/3.-Audemars-Piguet-Royal-Oak-Selfwinding-15550ST.OO_.1356ST.08-%E2%80%93-37mm.webp",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
