import 'package:flutter/material.dart';
import 'package:project_abalabal/latihan/pages1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: Center(child: Text("Ini Halaman 2")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/");
        },
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}