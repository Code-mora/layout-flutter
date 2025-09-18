import 'package:flutter/material.dart';

class LatihanWaz extends StatelessWidget {
  const LatihanWaz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ini latihan teks")),
      body: Center(child: Text("Ini Latihan Teks", 
        style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        )
      ),
    );
  }
}
