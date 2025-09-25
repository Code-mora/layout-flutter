import 'package:flutter/material.dart';

class Quiz1 extends StatelessWidget {
  const Quiz1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text("Training", style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 50),
                child: Text("<     >", style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w200
                  ),
                ),
              ),
            ],
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: Text("Your Program", style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, top: 25),
                child: Text("Details >", style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 250,
              width: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(251, 108, 52, 160), Color.fromARGB(255, 77, 144, 233)],
                  begin: AlignmentGeometry.center,
                  end: AlignmentGeometry.centerRight
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), topRight: Radius.circular(150), bottomRight: Radius.circular(20))
              ),
            ),
          ),
        ],
      ),
    );
  }
}