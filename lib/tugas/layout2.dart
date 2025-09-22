import 'package:flutter/material.dart';

class TugasLayout2 extends StatelessWidget {
  const TugasLayout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, 0.4),
            child: Image(
              image: AssetImage("gambar/mosque.png"),
              height: 200,
              width: 200,
            ),
          ),
          Center(
            child: Container(
              height: 380,
              width: 245,
              decoration: BoxDecoration(
                color: Color.fromARGB(80, 250, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Lets\nExplore Our\nDiversity",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 407,
            child: Image(
              image: AssetImage("gambar/boy.png"),
              height: 350,
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
