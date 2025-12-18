import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_app_overwrite/pages/task_data.dart';
import 'package:template_app_overwrite/pages/task_provider.dart';
// import 'package:template_app_overwrite/pages/task_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: TaskProvider(),
    );
  }
}
