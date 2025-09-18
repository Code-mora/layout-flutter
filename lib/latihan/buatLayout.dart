import 'package:flutter/material.dart';

class LatihanLayout extends StatelessWidget {
  const LatihanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 20,
          children: [
            Text("Always be in touch", style: TextStyle(
              fontSize: 38, fontWeight: FontWeight.w400),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color.fromARGB(255, 156, 125, 211),
              ),
              child: Column(
                spacing: 25,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Vivo"), Text("Brazil")]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("5GB", style: TextStyle(
                          fontSize: 20,
                        ),
                        ), Text("Valid for 30 days", style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        )],
                      ),
                      Text("\$15", style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}