import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("latihan layout"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ListTile(
            title: Text("Mas Amba"),
            subtitle: Text("Founder JMK 48"),
            leading: Icon(Icons.person),
            hoverColor: Colors.amber,
          )
        ],
      ),
    );
  }
}