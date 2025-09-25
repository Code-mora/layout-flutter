import 'package:flutter/material.dart';
import 'package:project_abalabal/latihan/pages1.dart';
import 'package:project_abalabal/latihan/pages2.dart';
import 'package:project_abalabal/quiz/quiz1.dart';








void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   "/" :(context)=>Page1(),
      //   "/halaman2":(context)=>Page2()
      // },
      // initialRoute: "/",
      home: Quiz1()
    );
  }
}