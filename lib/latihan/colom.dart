import 'package:flutter/material.dart';

class LatihanKolom extends StatelessWidget {
  const LatihanKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Kolom"),
        backgroundColor: Colors.indigoAccent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(width: 100, height: 150, color: Colors.blueGrey),
          Container(width: 150, height: 200, color: Colors.amber),
          Container(width: 200, height: 125, color: Colors.brown),
        ],
      ),
    );
  }
}