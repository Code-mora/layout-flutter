import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  const List2({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> mhs = [
      {"nama": "Mawar", "usia": 18},
      {"nama": "Lili", "usia": 16},
      {"nama": "Tulip", "usia": 17},
      {"nama": "Anggrek", "usia": 19},
      {"nama": "Kamboja", "usia": 17},
    ];
    return Scaffold(
      appBar: AppBar(title: Text("latihan layout")),
      body: ListView.builder(
          itemCount: mhs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(color: mhs[index]['usia'] < 18 ? Colors.red : Colors.green),
                child: ListTile(
                  title: Text(mhs[index]['nama']),
                  subtitle: Text(mhs[index]['usia'].toString()),
                )
              ),
            );
          },
        ),
    );
  }
}