import 'package:flutter/material.dart';

class Gambar extends StatelessWidget {
  const Gambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan asset gambar"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Image.asset("gambar/image.png", width: 300, height: 350),
          Image(image: AssetImage("gambar/image.png"), width: 200, height: 150,),
          Container(
            width: 400,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage("gambar/image.png"),
                fit: BoxFit.fill,
              )
            ),
          )
        ],
      ),
    );
  }
}