import 'package:flutter/material.dart';

class stak extends StatelessWidget {
  const stak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Stak"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(width: 450, height: 400, color: Colors.blueAccent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
            top: -100,
            left: 25,
              child: Container(width: 300, height: 200, color: Colors.yellowAccent)
              ),
            Align(
              alignment: Alignment(0.3, -0.75),
              child: Container(width: 100, height: 100, color: Colors.deepOrangeAccent)
              ),
            ],
          ),
        ),
      ),
    );
  }
}