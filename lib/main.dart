import 'package:flutter/material.dart';
import 'login_page.dart'; 
import 'product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => LoginPage(),
        "/product" :(context)=> ProductPage(),
      },
      initialRoute: "/",
    );
  }
}