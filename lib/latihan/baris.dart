import 'package:flutter/material.dart';

class LatihanBaris extends StatelessWidget {
  const LatihanBaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini latihan baris"),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.white,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(width: 100, height: 150, color: Colors.blueGrey),
          Container(width: 150, height: 200, color: Colors.amber),
          Container(width: 200, height: 125, color: Colors.brown),
        ],
      ),
    );
  }
}